import 'package:flutter_ecommerce/core/network/api_error_handler.dart';
import 'package:flutter_ecommerce/core/network/api_result.dart';
import 'package:flutter_ecommerce/features/login/model/LoginRequest.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/api_service.dart';
import '../model/LoginResponse.dart';

@Injectable()
class LoginRepository{
  final ApiService _apiServices;
  LoginRepository(this._apiServices);
  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest) async {
    try {
      LoginResponse response =  await _apiServices.login(loginRequest);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ErrorHandler(message: e.toString()));
    }
  }
}