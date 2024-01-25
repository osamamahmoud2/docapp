import 'package:dio/dio.dart';
import 'package:docapp/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(
  baseUrl: ApiConstants.baseUrl,
)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.loginEndPoint)
  Future<String> login(@Body() Map<String, dynamic> body);
}
