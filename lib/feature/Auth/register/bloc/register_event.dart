// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

sealed class RegisterEvent {}
class CreateUser extends RegisterEvent {
  SginUpModel User;
  CreateUser({
    required this.User,
  });
 }
