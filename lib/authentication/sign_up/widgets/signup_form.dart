// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import '../../models/auth_service.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  //get Auth Service
  final authService = AuthService();
  //Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //SignUp
  void signUp() async {
    final email = emailController.text;
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Password don't match")));
      return;
    }
    try {
      await authService.signInWithEmailPassword(email, password);

      //Pop this registration Page
      Navigator.pop(context);
    }
    //CAtch any errors
    catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      labelText: 'FirstName',
                      prefixIcon: Icon(Icons.verified_user_outlined)),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'LastName',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          //UserName
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 10),

          //Email
          TextFormField(
            controller: emailController,
            expands: false,
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 10),

          //Phone Number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: 'phoneNumber', prefixIcon: Icon(Icons.call)),
          ),
          SizedBox(height: 10),

          //Password
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Icons.security),
            ),
          ),
          SizedBox(height: 10),
          //Password
          TextFormField(
            controller: confirmPasswordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              prefixIcon: Icon(Icons.security_rounded),
            ),
          ),
          SizedBox(height: 15),

          ///SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: signUp,
              child: Text('createAccount'),
            ),
          ),
        ],
      ),
    );
  }
}
