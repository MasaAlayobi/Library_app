// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'books_bloc.dart';

@immutable
sealed class BooksState {}

final class BooksInitial extends BooksState {}
class SuccessFetchBooks extends BooksState {
  List<BooksModel> books;
  SuccessFetchBooks({
    required this.books,
  });
}
class NoConnectionWithBook extends BooksState{}
class LoadingBook extends BooksState{}
class NotFound extends BooksState{}
class successfetchsearch extends BooksState {
  List<BooksModel> result;
  successfetchsearch({
    required this.result,
  });
}
class NotFoundLabel extends BooksState{}