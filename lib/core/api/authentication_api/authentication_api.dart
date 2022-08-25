import 'package:riverpod/riverpod.dart';
import 'package:test_project/core/api/authentication_api/authentication_api_impl.dart';

import '../../data_models/api_response.dart';

abstract class AuthenticationApi {
  //Registration
  // Future<ApiResponse> register({
  //   String firstname,
  //   String email,
  //   String lastname,
  //   String phone,
  //   String password,
  // });

  Future<ApiResponse> login({
    String? email,
    String? password,
  });

  // Future<ApiResponse> logout();

  // Future<ApiResponse> recoverPassword({
  //   String email,
  //   String password,
  //   String otp,
  // });

  // Future<ApiResponse> passwordReset({
  //   String email
  // });

  // Future<ApiResponse> updateUserData({
  //   String firstname,
  //   String lastname,
  //   String dateOfBirth,
  //   String psw,
  //   String email,
  //   String gender,
  // });

  // Future<ApiResponse> updateUserImage({
  //   String image,
  // });

  // Future<ApiResponse> getUserProfile();

}

final authProvider = Provider<AuthenticationApi>((ref) {
  return AuthenticationApiImpl();
});
