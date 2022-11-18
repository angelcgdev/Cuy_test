class BasicLoginRequest {
  final String username;
  final String password;

  const BasicLoginRequest(this.username, this.password);

  Map<String, dynamic> toJson() => {
        "email": username,
        "password": password,
      };
}
