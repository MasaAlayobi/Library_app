// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_bloc.dart';

sealed class SearchEvent {}
class searchWord extends SearchEvent {
  String label;
  searchWord({
    required this.label,
  });
}
