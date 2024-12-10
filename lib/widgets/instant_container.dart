import 'package:flutter/material.dart';
import 'package:superbase_app/widgets/form_divider.dart';
import 'package:superbase_app/widgets/reusable_button.dart';
import 'package:superbase_app/widgets/social_buttons.dart';
import '../authentication/login/login.dart';
import '../authentication/sign_up/signup.dart';

class InstantContainer extends StatelessWidget {
  const InstantContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Have fun With Us, We\'re SUPABASE!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableButton(
                label: 'Sign Up',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context )=> SignupScreen()));
                },
              ),
              ReusableButton(
                label: 'Sign In',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context )=> LoginScreen()));
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          FormDivider(dark: false, dividerText: 'Login With',),
          SizedBox(height: 20),
          SocialButtons(),
        ],
      ),
    );
  }
}
