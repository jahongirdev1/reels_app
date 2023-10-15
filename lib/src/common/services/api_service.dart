import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../utils/custom_exceeption.dart';

enum Method {
  get,
  post,
  put,
  patch,
  delete,
}

class ApiService {
  static ApiService _instance(Dio dio) => ApiService._(dio);

  factory ApiService(Dio dio) => _instance(dio);

  ApiService._(this.dio);

  final Dio dio;

  Future<String> request(
    String path, {
    Method method = Method.get,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Object? body,
  }) async {
    if (headers != null) dio.options.headers.addAll(headers);

    try {
      Response<String> response = await switch (method) {
        Method.get =>
          dio.get<String>(path, queryParameters: queryParameters, data: body),
        Method.post =>
          dio.post<String>(path, queryParameters: queryParameters, data: body),
        Method.put =>
          dio.put<String>(path, queryParameters: queryParameters, data: body),
        Method.patch =>
          dio.patch<String>(path, queryParameters: queryParameters, data: body),
        Method.delete => dio.delete<String>(path,
            queryParameters: queryParameters, data: body),
      };

      return switch (response.statusCode) {
        null => Error.throwWithStackTrace(
            UnknownException("${response.data}", -1),
            StackTrace.current,
          ),
        >= 100 && < 200 => Error.throwWithStackTrace(
            UnknownException(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
        >= 200 && < 300 => response.data ?? "",
        >= 300 && < 400 => Error.throwWithStackTrace(
            UnknownException(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
        >= 400 && < 500 => Error.throwWithStackTrace(
            ClientException(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
        >= 500 && < 600 => Error.throwWithStackTrace(
            ServerException(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
        _ => Error.throwWithStackTrace(
            UnknownException(response.statusMessage!, response.statusCode!),
            StackTrace.current,
          ),
      };
    } catch (error, stackTrace) {
      debugPrint("$error");
      debugPrint("$stackTrace");
      rethrow;
    }
  }
}
