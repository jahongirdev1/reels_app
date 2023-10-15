import '../services/wrapper/i_service_wrapper.dart';
import '../constants/api_constants.dart';
import '../model/un_splash_model.dart';
import '../constants/config.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

abstract interface class IUnSplashRepository {
  abstract final UnSplashServiceWrapper wrapper;

  Future<UnSplashModel> getUnSplashData(String search);
}

class UnSplashRepository implements IUnSplashRepository {
  UnSplashRepository() : wrapper = UnSplashServiceWrapper(dio: _dio);

  static final _dio = Dio(
    BaseOptions(
      baseUrl: Config.unSplashBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      responseType: ResponseType.json,
    ),
  );

  @override
  final UnSplashServiceWrapper wrapper;

  @override
  Future<UnSplashModel> getUnSplashData(String search) async {
    String response = await wrapper.request(
      ApiConst.unSplashPath,
      queryParameters: ApiConst.unSplashQuery(page: "2", query: search),
      headers: ApiConst.unSplashParams(
        key: Config.unSplashApiKey,
      ),
    );
    return UnSplashModel.fromJson(jsonDecode(response));
  }
}
