import 'package:formz/formz.dart';

// Define input validation errors
enum EmailError { empty, format }

// Extend FormzInput and provide the input type and error type.
class Email extends FormzInput<String, EmailError> {
  // Call super.pure to represent an unmodified form input.
  const Email.pure() : super.pure('');
  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  // Call super.dirty to represent a modified form input.
  const Email.dirty(String value) : super.dirty(value);
  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == EmailError.empty) return 'El campo email es requerido';
    if (displayError == EmailError.format) return 'No es un email válido';

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  EmailError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return EmailError.empty;
    if (!emailRegExp.hasMatch(value)) return EmailError.format;

    return null;
  }
}
