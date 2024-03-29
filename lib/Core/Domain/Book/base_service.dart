import 'package:dio/dio.dart';
import 'package:novels_app/Core/resourse/string_app.dart';

abstract class BaseService {
   Dio dio = Dio();
  String baseUrl = appString.baseUsl+'/books';
   late Response response;

}