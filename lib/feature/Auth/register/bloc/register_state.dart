part of 'register_bloc.dart';

sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
class successcreatedUser extends RegisterState{}
class NoConnection extends RegisterState{}
class loading extends RegisterState{}