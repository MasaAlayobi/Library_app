import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

//  storage = new FlutterSecureStorage();
 GetIt config=GetIt.instance;
setup()async{

  FlutterSecureStorage storage =new FlutterSecureStorage();

  
  config.registerSingleton<FlutterSecureStorage>(storage);
  config.registerSingleton<String>(await storage.read(key: 'key') ?? "hello");
  
}

