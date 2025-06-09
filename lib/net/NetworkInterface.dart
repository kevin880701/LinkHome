import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:haohsing_flutter/model/response/error/Error500/Error500Response.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'ApiEndPoint.dart';

class NetworkInterface {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoint.domain));

  Future<Response> get(
      {required String url,
      dynamic body,
      String? userToken,
      Map<String, dynamic>? query,
      String contentType = 'application/json'}) async {
    try {
      Options options = Options(headers: {
        HttpHeaders.authorizationHeader: userToken ?? '',
        'Content-Type': contentType,
      });

      _logRequest("GET", url: url, options: options, body: body, query: query);
      Response response = await _dio.get(url, data: body, queryParameters: query, options: options);
      _logResponse("GET", url, response);

      return response;
    } catch (e) {
      _handleDioError(e, "GET", url);
      throw Exception('Failed to get data');
    }
  }

  Future<Response> post(
      {required String url,
      dynamic body,
      String? userToken,
      Map<String, dynamic>? query,
      String contentType = 'application/json'}) async {
    try {
      Options options =
          Options(headers: {HttpHeaders.authorizationHeader: userToken ?? '', 'Content-Type': contentType});
      _logRequest("POST", url: url, options: options, body: body, query: query);
      Response response = await _dio.post(url, data: body, queryParameters: query, options: options);
      _logResponse("POST", url, response);

      return response;
    } catch (e) {
      _handleDioError(e, "POST", url);
      throw Exception('Failed to post data');
    }
  }

  Future<Response> delete({required String url, dynamic body, String? userToken, Map<String, dynamic>? query}) async {
    try {
      Options options = Options(headers: {
        HttpHeaders.authorizationHeader: userToken ?? '',
      });

      _logRequest("DELETE", url: url, options: options, body: body, query: query);
      Response response = await _dio.delete(url, data: body, queryParameters: query, options: options);
      _logResponse("DELETE", url, response);

      return response;
    } catch (e) {
      _handleDioError(e, "DELETE", url);
      throw Exception('Failed to delete data');
    }
  }

  Future<Response> put(
      {required String url,
      dynamic body,
      String? userToken,
      Map<String, dynamic>? query,
      String contentType = 'application/json'}) async {
    try {
      Options options =
          Options(headers: {HttpHeaders.authorizationHeader: userToken ?? '', 'Content-Type': contentType});

      _logRequest("PUT", url: url, options: options, body: body, query: query);
      Response response = await _dio.put(url, queryParameters: query, data: body, options: options);
      _logResponse("PUT", url, response);

      return response;
    } catch (e) {
      _handleDioError(e, "PUT", url);
      throw Exception('Failed to put data');
    }
  }

  void _logRequest(String method, {required String url, Options? options, dynamic body, Map<String, dynamic>? query}) {
    AppLog.v("--> START $method ${ApiEndPoint.domain + url}");
    AppLog.v("Headers: ${jsonEncode(options?.headers)}");
    if (body != null) {
      if (body is FormData) {
        // 印出 FormData 的字段和文件內容
        AppLog.v("FormData Fields:");
        for (var field in body.fields) {
          AppLog.v("Field: ${field.key} = ${field.value}");
        }
        AppLog.v("FormData Files:");
        for (var file in body.files) {
          AppLog.v("File: ${file.key} = ${file.value.filename} (size: ${file.value.length} bytes)");
        }
      } else {
        AppLog.v("Body: ${jsonEncode(body)}");
      }
    } else {
      AppLog.v("No Body");
    }
    AppLog.v(query != null ? "Query: ${jsonEncode(query)}" : "No Query");
    AppLog.v("--> END $method ${ApiEndPoint.domain + url}");
  }

  void _logResponse(String method, String url, Response response) {
    AppLog.v("<-- START $method ${response.realUri}");
    AppLog.v("Status: ${response.statusCode}");
    AppLog.v("Response: ${jsonEncode(response.data)}");
    AppLog.v("<-- END $method ${ApiEndPoint.domain + url}");
  }

  void _handleDioError(dynamic e, String method, String url) {
    if (e is DioException && e.response != null) {
      final response = e.response!;
      if (response.statusCode == 500) {
        try {
          final errorResponse = Error500Response.fromJson(response.data);
          AppLog.e("[$method] Request to $url failed with Internal Server Error: Status=${errorResponse.status}, Message=${errorResponse.message}, ErrorMessage=${errorResponse.errorMessage}");
          // 成功解析後直接拋出 Error500Response，不會進入下面的 catch 區塊
          throw errorResponse;
        } on Exception catch (parseError) {
          // 僅捕獲解析失敗的情況
          AppLog.e("[$method] Request to $url failed. Failed to parse ErrorResponse: ${parseError.toString()}");
          throw Exception("Failed to parse error response");
        }
      }
    }
    // 如果不是 500 的錯誤或其他類型的 DioException
    AppLog.e("[$method] Request to $url failed: ${e.toString()}");
    throw Exception('Failed to $method data');
  }
}
