import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/register_cubit/registrer_cubit.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuevo Usuario')),
      body: BlocProvider(
        create: (context) => RegistrerCubit(),
        child: const _RegisterView(),
      ),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FlutterLogo(size: 100),

              SizedBox(height: 30),
              _RegisterForm(),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  _RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final registrerCubit = context.watch<RegistrerCubit>();
    final username = registrerCubit.state.username;
    final password = registrerCubit.state.password;
    final email = registrerCubit.state.email;

    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Nombre de usuario',
            onChanged: registrerCubit.usernameChanged,
            errorMessage: username.errorMessage,
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            label: 'Correo electrónico',
            onChanged: registrerCubit.emailChanged,
            errorMessage: email.errorMessage,
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
            onChanged: registrerCubit.passwordChanged,
            errorMessage: password.errorMessage,
          ),
          SizedBox(height: 30),
          FilledButton.tonalIcon(
            onPressed: () {
              registrerCubit.onSubmit();
            },
            label: const Text('Crear usuario'),
            icon: Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}
