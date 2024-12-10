import 'package:flutter/material.dart';
import 'package:superbase_app/authentication/login/widgets/login_form.dart';
import 'package:superbase_app/widgets/headers.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                SizedBox(height: 65,),
                //Logo, Title & Sub -Title
                Headers(
                  hearderText: 'Welcome To Supabase',
                  image: 'assets/images/supabase.png',
                ),

                //LoginForm
                LoginForm(),
              ],
            )),
      ),
    );
  }
}
