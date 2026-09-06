class UserSession {
  final String accessToken;
  final String? refreshToken;

  UserSession({required this.accessToken,  this.refreshToken});
}