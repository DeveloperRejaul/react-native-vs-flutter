part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSuccess extends AuthState {
  final String access_token;
  final String refresh_token;
  AuthSuccess({
    required this.access_token,
    required this.refresh_token,
  });
}

final class AuthFailure extends AuthState {
  final String message;
  AuthFailure(this.message);
}

final class AuthLoading extends AuthState {}
