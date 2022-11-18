class Apis {
  static const _baseUrl = 'https://apidev.cuy.pe';

  static const authBasic = '$_baseUrl/api/v1/auth';
  static const auth = '$_baseUrl/api/v1/user/login';
  static const plans =
      '$_baseUrl/api/v1/service-package?sort=ASC&isActive=true';
}
