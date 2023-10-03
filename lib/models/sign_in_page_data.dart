class SignInData {
  SignInData({this.email = '', this.password = ''});
  String email;
  String password;
  void printSignInData() {
    print({'email': email, 'password': password});
  }

  bool checksignIn() => email.isEmpty || password.isEmpty;
}
