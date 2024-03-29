
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novels_app/Core/Data/books_model.dart';
import 'package:novels_app/Core/Domain/Book/books_service.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<searchWord>((event, emit)async {
      emit(LoadingSearch());
      try{
      List<BooksModel> allBook =await BooksServiceImp().getAllQuestion();
    List<BooksModel> result=[];
    for(var element in allBook){
      if(element.name.contains(event.label)){
        result.add(element);
      }
      if(element.author.contains(event.label)){
        result.add(element);
      }
    }
    if (result.isEmpty){
        emit(notFoundLabel());
      }
      else{
        emit(Successfetchsearch(result: result));
      }
      }
      catch(e){
        emit(NoConnectionWitheSearch());
      }
    });
  }
}
