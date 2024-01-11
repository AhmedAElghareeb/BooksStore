import 'package:dio/dio.dart';

class ApiHelper {
  ApiHelper(this.dio);

  final _baseUrl = "https://www.googleapis.com/books/v1/";

  final Dio dio;

  Future<Map<String, dynamic>> fetch({required String endPoint}) async {
    var response = await dio.get(
      "$_baseUrl$endPoint",
    );

    return response.data;
  }
}