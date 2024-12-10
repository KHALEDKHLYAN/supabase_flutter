import 'package:flutter/material.dart';
import 'package:superbase_app/authentication/models/auth_service.dart';
import 'package:superbase_app/authentication/sign_up/signup.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  //get Auth Service
  final authService = AuthService();
  //Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //Login button_press
  void login() async {
    //prepare Login
    final email = emailController.text;
    final password = passwordController.text;

    try {
      await authService.signInWithEmailPassword(email, password);
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
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(children: [
          //Email
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.arrow_right), labelText: "Email"),
          ),
          SizedBox(height: 10),
          //Password
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 5),

          ///Remember Me & Forget Password
          Row(
            children: [
              ///Remember me
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text("RemeberMe")
                ],
              ),
              SizedBox(width: 5),

              ///Forget Password
              TextButton(onPressed: () {}, child: Text('forgetpassword')),
            ],
          ),
          SizedBox(height: 10),

          ///Sign in Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: login,
              child: Text('signin'),
            ),
          ),
          SizedBox(height: 10),

          ///Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  )),
              child: Text('createAccount'),
            ),
          ),
        ]),
      ),
    );
  }
}
