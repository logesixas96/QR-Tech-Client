class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;
  String? phoneNum;

  UserModel({this.uid, this.email, this.firstName, this.lastName, this.phoneNum});

  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        lastName: map['lastName'],
        phoneNum: map['phoneNum']);
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNum': phoneNum
    };
  }
}
