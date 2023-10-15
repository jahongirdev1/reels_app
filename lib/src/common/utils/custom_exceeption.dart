class UnknownException implements Exception {
  const UnknownException(this.message, this.statusCode);

  final String message;
  final int statusCode;
}

class ClientException implements Exception {
  const ClientException(this.message, this.statusCode);

  final String message;
  final int statusCode;
}

class ServerException implements Exception {
  const ServerException(this.message, this.statusCode);

  final String message;
  final int statusCode;
}
