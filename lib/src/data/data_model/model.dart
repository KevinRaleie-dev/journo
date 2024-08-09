class SignUpModel {
  final String name;
  final String email;

  SignUpModel({required this.name, required this.email});

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email};
  }
}
