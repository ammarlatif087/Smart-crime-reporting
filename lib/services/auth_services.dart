import 'package:crime_reporting_app/app/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../presentation/models/auth_model.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();
  String? _error;

  String? get error => _error;

  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;

  // Sign up with email and password
  Future<void> signUpWithEmailPassword(String email, String password,
      String fName, String lName, String cnic, String userType) async {
    try {
      final authResult = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      final user = authResult.user;
      if (user != null) {
        _currentUser = UserModel(
          uid: user.uid,
          email: user.email!,
          fName: fName,
          lName: lName,
          cnic: cnic,
          userType: userType,
        );

        // Save user data to the Realtime Database
        await _saveUserData(_currentUser!);

        notifyListeners();
      }
    } catch (e) {
      final String errorMessage = _handleAuthError(e);
      _error = errorMessage;
      notifyListeners();

      // Handle sign-up errors here
      print('Sign-up error: $e');
    }
  }

  // Save user data to the Realtime Database
  Future<void> _saveUserData(UserModel user) async {
    try {
      await _databaseReference.child('users').child(user.uid).set({
        'email': user.email,
        'fName': user.fName,
        'lName': user.lName,
        'cnic': user.cnic,
        'userType': user.userType,
        // Add other fields you want to save here
      });
    } catch (e) {
      notifyListeners();
      // Handle database errors here
      print('Database error: $e');
    }
  }

  Future<void> login(String email, String passwords) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: passwords,
      );

      // Retrieve user type from Realtime Database
      // You'll need to implement this part based on your Firebase structure
      Future<String> userType =
          getUserTypeFromDatabase(userCredential.user!.uid);
      print(userType);

      // Navigate based on user type
      if (userType == 'admin') {
        Get.offAndToNamed(Routes.adminDashboardRoute);
      } else if (userType == 'user') {
        Get.offAndToNamed(Routes.userDashboardRoute);
      } else {
        // Handle other user types or errors
      }
    } catch (e) {
      // Handle login errors
      print(e.toString());
    }
  }

  Future<String> getUserTypeFromDatabase(String uid) async {
    final DatabaseReference userRef =
        FirebaseDatabase.instance.ref().child('users').child(uid);

    try {
      DataSnapshot snapshot =
          (await userRef.child('userType').once()) as DataSnapshot;
      if (snapshot.value != null) {
        return snapshot.value.toString();
      } else {
        // Handle if user type is not found
        return 'unknown';
      }
    } catch (error) {
      // Handle database errors
      print('Error fetching user type: $error');
      return 'unknown';
    }
  }

  String _handleAuthError(dynamic e) {
    String errorMessage = 'Error occurred during sign-up. Please try again.';

    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'weak-password':
          errorMessage = 'The password provided is too weak.';
          break;
        case 'email-already-in-use':
          errorMessage = 'The email address is already in use.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is invalid.';
          break;
        case 'operation-not-allowed':
          errorMessage = 'Email/password accounts are not enabled.';
          break;
        default:
          // Handle other FirebaseAuthException codes here
          break;
      }
      notifyListeners();
    }

    return errorMessage;
  }
}
