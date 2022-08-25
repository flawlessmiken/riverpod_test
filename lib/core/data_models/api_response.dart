// To parse this JSON data, do
//
//     final apiResponse = apiResponseFromMap(jsonString);

import 'dart:convert';

class ApiResponse {
  ApiResponse({
    this.status,
    this.message,
    this.data,
    this.errors
  });

  bool? status;
  String? message;
  covariant dynamic data;
  covariant dynamic errors;

  factory ApiResponse.fromJson(String str) => ApiResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ApiResponse.fromMap(Map<String, dynamic> json) => ApiResponse(
    status: json["success"],
    message: json["msg"],
    data: json["data"],
    errors: json["errors"],
  );

  Map<String, dynamic> toMap() => {
    "success": status,
    "msg": message,
    "data": data,
    "errors": errors,
  };
}
