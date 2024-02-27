import 'package:equipo/application/profile/bloc/profile_bloc.dart';
import 'package:equipo/core/injection.dart';
import 'package:equipo/domain/model/userDataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _usernameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  bool _isEditing = false;
  @override
  void initState() {
    getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        _emailController.text = state.dataModel?.email ?? "";
        _usernameController.text = state.dataModel?.username ?? "";
        _passwordController.text = state.dataModel?.password ?? "";
        setState(() {});
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                setState(() {
                  _isEditing = !_isEditing;
                });
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                _isEditing
                    ? TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      )
                    : Text(
                        _emailController.text,
                        style: TextStyle(fontSize: 16.0),
                      ),
                SizedBox(height: 20.0),
                Text(
                  'Username:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                _isEditing
                    ? TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      )
                    : Text(
                        _usernameController.text,
                        style: TextStyle(fontSize: 16.0),
                      ),
                SizedBox(height: 20.0),
                Text(
                  'Password:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                _isEditing
                    ? TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      )
                    : Text(
                        _passwordController.text,
                        style: TextStyle(fontSize: 16.0),
                      ),
                _isEditing
                    ? ElevatedButton(
                        onPressed: () {
                          getIt<ProfileBloc>().add(ProfileEvent.updateProfile(
                              UserDataModel(
                                  username: _usernameController.text,
                                  email: _emailController.text,
                                  fullName: _emailController.text,
                                  password: _passwordController.text)));

                          Navigator.pop(context);
                        },
                        child: Text("Edit"))
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
