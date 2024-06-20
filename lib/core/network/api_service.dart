import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/core/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/model/LoginRequest.dart';
import '../../features/login/model/LoginResponse.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndPoing)
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);
}
