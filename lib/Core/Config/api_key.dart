

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiKeyService  {
  final storage = new FlutterSecureStorage();

  void saveApiKey(String apiKey) async {
    await storage.write(
        key: 'apiKey',
        value:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml5aWRlY21keWhpdmRxampkY3p4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNjIyMDIsImV4cCI6MjAxNTczODIwMn0.-SSo8FqwiGpWdaQ0TdCikiQY374vE0BT1EzYk90pYRg');
           
          
  }
  

  Future<String?> getApiKey() async {
    //  print(await storage.read(key: 'apiKey'));
    return await storage.read(key: 'apiKey');
    
  }
}
