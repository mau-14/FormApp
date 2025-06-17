import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:equatable/equatable.dart';

part 'registrer_state.dart';

class RegistrerCubit extends Cubit<RegisterFormState> {
  RegistrerCubit() : super(const RegisterFormState());

  void onSubmit() {
    print(state);
  }

  void usernameChanged(String value) {
    emit(state.copyWith(username: value));
  }

  void emailChanged(String value) {
    emit(state.copyWith(email: value));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value));
  }
}
