abstract final class ApiConst {
  static String unSplashPath =
      '/search/photos';

  static Map<String, String> unSplashQuery(
          {required String page, required query}) =>
      {
        "page" : page,
        "query" : query,
      };
  static Map<String, String> unSplashParams({
    required String key,
  }) =>
      {
        'Authorization': key,
        'Content-Type': 'application/json',
      };
}
