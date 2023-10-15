
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../api_service.dart';

abstract interface class IServiceWrapper {
  abstract final Dio dio;
  abstract final ApiService apiService;

  Future<String> request(
    String path, {
    Method method = Method.get,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Map<String, Object>? body,
  });
}

class UnSplashServiceWrapper implements IServiceWrapper {
  UnSplashServiceWrapper({required this.dio}) : apiService = ApiService(dio);

  @override
  @visibleForTesting
  @protected
  final ApiService apiService;

  @override
  @visibleForTesting
  @protected
  final Dio dio;

  @override
  Future<String> request(
    String path, {
    Method method = Method.get,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Map<String, Object>? body,
  }) =>
      apiService.request(
        path,
        method: method,
        headers: headers,
        queryParameters: queryParameters,
        body: body,
      );
}
