import 'package:dio/dio.dart';

class ApiHelper {
  ApiHelper(this._dio);

  final _baseUrl = "https://www.googleapis.com/books/v1/";

  final Dio _dio;

  Future<Map<String, dynamic>> fetch({required String endPoint}) async {
    var response = await _dio.get(
      "$_baseUrl$endPoint",
    );

    return response.data;
  }
}
