// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'books_bloc.dart';

@immutable
sealed class BooksEvent {}
class getBooks extends BooksEvent{}
class SearchWord extends BooksEvent {
  String label;
  SearchWord({
    required this.label,
  });
}
