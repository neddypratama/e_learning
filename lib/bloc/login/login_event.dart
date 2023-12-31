part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class LoginButtonPressed extends LoginEvent {
  final String identifier;
  final String password;

  LoginButtonPressed(this.identifier, this.password);
}
