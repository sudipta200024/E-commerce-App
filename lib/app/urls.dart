class Urls {
  static const String _baseUrl = '';
  static  String verifyEmailUrl(String email) => '$_baseUrl/UserLogin/$email';

}