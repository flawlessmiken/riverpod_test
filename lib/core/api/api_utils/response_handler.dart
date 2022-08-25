import 'package:http/http.dart' as http;

import '../../data_models/api_response.dart';
import 'network_exceptions.dart';

dynamic responseHandler(response, {bool hideLog = false}) async {
  //Attempt to derive error message
  String? exceptionMsg;
  String? exceptionCode;
  ApiResponse? _responsebody;
  try {
    _responsebody = ApiResponse.fromJson(response.body);
    exceptionMsg = _responsebody.message;
  } catch (e) {
    print("Error deriving error message: $e");
    exceptionMsg = response.body;
    // exceptionCode = response.statusCode.toString();
  }

  if (!hideLog) {
    print(response.body);
    print("status code: ${response.statusCode}");
  }

  switch (response.statusCode) {
    case 201:
      return response.body;
      break;
    case 200:
      return response.body;
      break;
    case 400:
      throw BadRequestException(exceptionMsg);
    case 401:
    case 403:
      throw UnauthorisedException(exceptionMsg);
    case 404:
      throw FileNotFoundException(exceptionMsg);
    case 422:
    //extract errors
      try {
        if (_responsebody!.errors?.values != null)
          exceptionMsg = _responsebody.errors?.values?.toList()?.join(", ");
      } catch (e) {
        print("could not extract errors");
      }

      throw AlreadyRegisteredException(exceptionMsg);
    case 500:
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
