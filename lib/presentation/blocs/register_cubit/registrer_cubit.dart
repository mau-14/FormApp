import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/infrastructure/inputs/inputs.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'registrer_state.dart';

class RegistrerCubit extends Cubit<RegisterFormState> {
  RegistrerCubit() : super(const RegisterFormState());

  void onSubmit() {
    print(state);
  }

  void usernameChanged(String value) {
    final username = Username.dirty(value);

    emit(
      state.copyWith(username: username, isValid: Formz.validate([username])),
    );
  }

  void emailChanged(String value) {
    emit(state.copyWith(email: value));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value));
  }
}
