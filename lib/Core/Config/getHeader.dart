import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:novels_app/Core/Config/api_key.dart';
import 'package:novels_app/Core/Config/get_it.dart';

getHeader({bool useToken = false})async {
  await config.get<FlutterSecureStorage>().write(
      key: 'apikey',
      value:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml5aWRlY21keWhpdmRxampkY3p4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNjIyMDIsImV4cCI6MjAxNTczODIwMn0.-SSo8FqwiGpWdaQ0TdCikiQY374vE0BT1EzYk90pYRg');
  if (useToken) {
    // String token = ApiKeyService().getApiKey();
     print(await config.get<FlutterSecureStorage>().read(key: 'apikey'));

    print('#################');
    return Options(headers: {
      "apikey": config.get<FlutterSecureStorage>().read(key: 'apikey'),
      // "Accept": "application/json"
    });
  } else {
    return Options(headers: {"Accept": "application/json"});
  }
}
