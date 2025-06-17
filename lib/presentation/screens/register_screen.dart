import 'package:flutter/material.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuevo Usuario')),
      body: _RegisterView(),
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
            children: const [
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
  const _RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(label: 'Nombre de usuario'),
          SizedBox(height: 20),
          CustomTextFormField(label: 'Correo electrónico'),
          SizedBox(height: 20),
          CustomTextFormField(label: 'Contraseña', obscureText: true),
          SizedBox(height: 30),
          FilledButton.tonalIcon(
            onPressed: () {},
            label: const Text('Crear usuario'),
            icon: Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}
