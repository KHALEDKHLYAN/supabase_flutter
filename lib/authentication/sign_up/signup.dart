import 'package:flutter/material.dart';
import '../../widgets/form_divider.dart';
import '../../widgets/social_buttons.dart';
import 'widgets/signup_form.dart';
import 'widgets/terms_constions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                'Create Your Account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 10),

              //Form
              SignupForm(dark: false),
              SizedBox(height: 20),

              //Divider
              FormDivider(
                  dark: false, dividerText: 'create Account'.toUpperCase()),
              SizedBox(height: 20),
              //Terms7Conditions CheeckBox
              TermsAndConditions(dark: false),
              SizedBox(height: 10),

              //Social Button
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
