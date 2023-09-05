class UserModel {
  final String uid;
  final String email;
  final String fName;
  final String lName;
  final String cnic;
  final String userType;

  // Add other user-related fields here

  UserModel({
    required this.uid,
    required this.email,
    required this.fName,
    required this.lName,
    required this.cnic,
    required this.userType,

    // Initialize other fields here
  });
}
