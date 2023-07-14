import 'package:crime_reporting_app/app/index.dart';

class AuthViewModel extends ChangeNotifier {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
}
