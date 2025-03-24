import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class LoginState extends Equatable {  
  final String email;
  final String password;
  final GlobalKey<FormState>? formKey;

  const LoginState({
    this.email = '',
    this.password = '', 
    this.formKey
  });

  LoginState copyWith({    
    String? email,
    String? password,
    GlobalKey<FormState>? formKey
  }){
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      formKey: formKey
    );
  }

  @override  
  List<Object?> get props => [email, password];

}