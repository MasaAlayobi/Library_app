import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:novels_app/Core/Config/api_key.dart';
import 'package:novels_app/Core/Config/getHeader.dart';
import 'package:novels_app/Core/Config/get_it.dart';
import 'package:novels_app/Core/Data/books_model.dart';
import 'package:novels_app/Core/Domain/Book/base_service.dart';

abstract class BooksService extends BaseService {


 Future<List<BooksModel>> getAllQuestion();
 Future<BooksModel> getOneQuestion(String id);
  createNewQuestion(BooksModel newQestion);
  updateOldQuestion(String id,BooksModel newQestion);
  deleteQuestion(String id);
}
class BooksServiceImp extends BooksService{
  @override
  createNewQuestion(BooksModel newQestion) {
    // TODO: implement createNewQuestion
    throw UnimplementedError();
  }

  @override
  deleteQuestion(String id) {
    // TODO: implement deleteQuestion
    throw UnimplementedError();
  }

  @override
  Future<List<BooksModel>> getAllQuestion() async{
   

   dio.options.headers["apikey"]=await config.get<FlutterSecureStorage>().read(key: 'apikey');
  response=await dio.get(baseUrl,
  
  );
  
  
  if(response.statusCode==200){
    dynamic temp =response.data;
    
    List<BooksModel> allBook=List.generate(temp.length, (index) => BooksModel.fromMap(temp[index]));
    print(allBook);
    return allBook;
  }
  else{
    print('**************************');
    return [];
  }
  }

  @override
  Future<BooksModel> getOneQuestion(String id) {
    // TODO: implement getOneQuestion
    throw UnimplementedError();
  }

  @override
  updateOldQuestion(String id, BooksModel newQestion) {
    // TODO: implement updateOldQuestion
    throw UnimplementedError();
  }

}