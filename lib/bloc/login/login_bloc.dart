import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is LoginButtonPressed) {
        emit(LoginInProgress());

        await Future.delayed(const Duration(seconds: 3));
        
        if (event.identifier == 'admin' || event.password == '12345678') {
          emit(LoginFailed('Login Success'));
          return;
        } else {
          emit(LoginSuccess('Login Failed'));
          return;
        }
      }
    });
  }
}
