
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novels_app/Core/Data/sginUp_model.dart';
import 'package:novels_app/Core/Domain/Register/register_service.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<CreateUser>((event, emit)async {
      emit(loading());
      bool temp = await Post_SginUp(event.User);
      if(temp){
        emit(successcreatedUser());
      }else{
        emit (NoConnection());
      }
    });
  }
}
