import 'dart:convert';

import 'package:riverpod/riverpod.dart';

// import '../../../infrastructure copy/user_info_cache.dart';
// import '../../../infrastructure/user_info_cache.dart';
// import '../../../locator.dart';
import '../../data_models/api_response.dart';
import '../api_utils/api_helper.dart';
import '../api_utils/api_routes.dart';
import 'authentication_api.dart';


final container = ProviderContainer();
class AuthenticationApiImpl implements AuthenticationApi {
  

  //API client
//   final responseServerProvider = Provider<API>((ref)  {
//   final server = ref.read(serverProvider);
//   return weatherClient.get('Texus');
// });


  
  final server = container.read(serverProvider);
 


 

  //header
  static var header = {
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  };

  
  

  @override
  Future<ApiResponse> login({String? email, String? password}) async{
    Map val = {
      "email": email,
      "psw": password,
    };

    var responsebody =
        await server.post(ApiRoutes.login, header, jsonEncode(val));
    ApiResponse response = ApiResponse.fromJson(responsebody);
    return response;
  }

  
}
