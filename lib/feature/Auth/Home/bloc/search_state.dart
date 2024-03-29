// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_bloc.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}
class LoadingSearch extends SearchState{}
class Successfetchsearch extends SearchState {
  List<BooksModel> result;
  Successfetchsearch({
    required this.result,
  });
  

}
class notFoundLabel extends SearchState{}
class NoConnectionWitheSearch extends SearchState{}