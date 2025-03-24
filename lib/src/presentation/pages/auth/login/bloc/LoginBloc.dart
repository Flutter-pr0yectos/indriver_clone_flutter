import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/LoginEvent.dart';
import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/LoginState.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  final formKey = GlobalKey<FormState>();

  LoginBloc():super(LoginState()){
    on<LoginEvent>((event, emit) {
      emit(state.copyWith(formKey: formKey));
    });

    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          email: event.email,
          formKey: formKey
        )
      );
    });

    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: event.password,
          formKey: formKey
        )
      );
    });

    on<FormSubmit>((event, emit) {
      print('Email: ${state.email}');
      print('Password: ${state.password}');
    });
  }
}