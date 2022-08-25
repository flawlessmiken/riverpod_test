import 'package:riverpod/riverpod.dart';
import 'package:test_project/core/data_models/api_response.dart';

import '../api/authentication_api/authentication_api.dart';

final responseProvider = FutureProvider<ApiResponse?>((ref) async {
  final authClient = ref.read(authProvider);

  try {
    return authClient.login(
        email: 'user@gmail.comm', password: 'Defaultuser@2022');
  } catch (e) {
    return null;
  }
});
