import 'package:flutter/material.dart';
import 'package:superbase_app/authentication/models/auth_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final authService = AuthService();
  //
  void logOut()async{
    await authService.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(icon: Icon(Icons.logout_rounded),onPressed: logOut,)
        ],
      ),
      body: ListView(),
    );
  }
}