import 'package:equipo/application/login/login_startup/auth_bloc.dart';
import 'package:equipo/core/injection.dart';
import 'package:equipo/screens/home/home_page.dart';
import 'package:equipo/screens/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isLoggedIn ?? false) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        } else if (state.isError) {
          Fluttertoast.showToast(msg: "Error occured while loggin in");
        }
      },
      child: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'User Name',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value?.isEmpty ?? false) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          const SizedBox(height: 20.0),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value?.isEmpty ?? false) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 20.0),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    getIt<AuthBloc>().add(AuthEvent.login(
                        username: _emailController.text,
                        password: _passwordController.text));
                  }
                },
                child: const Text('Login'),
              );
            },
          ),
          const SizedBox(height: 10.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterPage()));
            },
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
