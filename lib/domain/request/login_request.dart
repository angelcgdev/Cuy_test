class LoginRequest {
  final String username;
  final String password;
  final String oauthToken;

  const LoginRequest(this.username, this.password, this.oauthToken);

  Map<String, dynamic> toJson() => {
        "emailOrPhone": username,
        "password": password,
      };
}
