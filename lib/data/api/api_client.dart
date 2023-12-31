import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;

  ///
  ///  Api client
  ///
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = '';
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  ///
  ///  get request
  ///
  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response responce = await get(uri);
      return responce;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
