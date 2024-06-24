import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce/features/login/model/LoginRequest.dart';

import '../repository/LoginRepository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  void emitLoginState(LoginRequest loginRequest) async {
    emit(const LoginState.loading());
    final response = await _loginRepository.login(loginRequest);
    response.when(
        success: (data) => emit(LoginState.success(data)),
        failure: (error) => emit(LoginState.error(error: error.message ?? '')));
  }
}
