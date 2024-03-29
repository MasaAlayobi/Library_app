import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:novels_app/Core/Config/get_it.dart';
import 'package:novels_app/Core/Data/sginUp_model.dart';
import 'package:novels_app/Core/resourse/string_app.dart';

Post_SginUp (SginUpModel user) async{
  Dio dio =Dio();
  dio.options.headers["apikey"]=await config.get<FlutterSecureStorage>().read(key: 'apikey');
  Response response= await dio.post(appString.baseUsl+'/users',
  data: user.toJson(),
  );
  if(response.statusCode==201){
    print('done');
    return true;
  }
  else{
    return false;
  }
}