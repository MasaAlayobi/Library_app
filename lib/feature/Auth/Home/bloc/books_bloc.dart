import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:novels_app/Core/Data/books_model.dart';
import 'package:novels_app/Core/Domain/Book/books_service.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  BooksBloc() : super(BooksInitial()) {

    late List<BooksModel> temp;
    on<getBooks>((event, emit) async {

      // TODO: implement event handler
      emit(LoadingBook());
      try {
         temp = await BooksServiceImp().getAllQuestion();
        print(temp);
        if (temp.isEmpty) {
          emit(NotFound());
        } else {
          emit(SuccessFetchBooks(books: temp as List<BooksModel>));
        }
              } catch (e) {
        emit(NoConnectionWithBook());
      }
    });

    on<SearchWord>((event, emit) {
          if (event.label == null) {
            // emit(SuccessFetchBooks(books: temp));
            emit(NotFoundLabel());
          } else {
            List<BooksModel> result = [];
            if (event.label.isNotEmpty) {
              for (var element in temp) {
                if (element.name.contains(event.label)) {
                  result.add(element);
                }
                if (element.author.contains(event.label)) {
                  result.add(element);
                }
              }
            }
            if (result.isEmpty) {
              // emit(SuccessFetchBooks(books: temp));
              emit(NotFoundLabel());
            } else {
              emit(successfetchsearch(result: result));
            }
          }
          // emit(SuccessFetchBooks(books:temp as List<BooksModel> ));
        });

  }
}
