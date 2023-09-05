import 'dart:io';

import 'package:crime_reporting_app/app/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:image_picker/image_picker.dart';

import '../models/user_model.dart';

class AuthViewModel extends ChangeNotifier {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fNameCtrl = TextEditingController();
  TextEditingController lNameCtrl = TextEditingController();
  TextEditingController cnicCtrl = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? fireBaseuser;
  final DatabaseReference userRefernece =
      FirebaseDatabase.instance.ref().child('Users');

  File? _image, _idPick;

  File? get image => _image;
  File? get idImage => _idPick;

  var email = '';
  bool isPassObs = true;
  List<String> _userType = [
    'admin',
    'Patrolling officer',
    'sho',
    'ssp',
    'user'
  ];
  String _selectedUserType = '';

  List<String> get users => _userType;

  String get selectedUser => _selectedUserType;

  set selectedUser(String value) {
    _selectedUserType = value;
    notifyListeners();
  }

  set users(List<String> value) {
    _userType = value;
    notifyListeners();
  }

  void onEmailChange(String value) {
    email = value;
    notifyListeners();
  }

  void showPassword() {
    isPassObs = !isPassObs;
    notifyListeners();
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      notifyListeners();
    }
  }

  Future<void> pickIdCard(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      _idPick = File(pickedFile.path);
      notifyListeners();
    }
  }

  void clearImage() {
    _image = null;
    notifyListeners();
  }

  signupwithFirebase() async {
    try {
      final UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
      fireBaseuser = credential.user;
      await fireBaseuser!.reload();
      fireBaseuser = _auth.currentUser;
      saveUserToFirebase();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  saveUserToFirebase() async {
    //  var pushId = userRefernece.push();

    UserModel userModel = UserModel.withId(
      fireBaseuser!.uid,
      fNameCtrl.text,
      lNameCtrl.text,
      cnicCtrl.text,
      emailController.text,
      passController.text,
      selectedUser,
    );

    await userRefernece
        .child(fireBaseuser!.uid.toString())
        .set(userModel.toJson())
        .then(
      (value) {
        fNameCtrl.text = '';
        notifyListeners();
        Get.toNamed(Routes.loginRoute);
      },
    );
  }
}
