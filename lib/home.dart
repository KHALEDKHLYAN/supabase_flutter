import 'package:flutter/material.dart';
import 'package:superbase_app/widgets/headers.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height:65),
          Center(child:  Headers(hearderText: 'Hello,Supabase Lover',image: 'assets/images/supabase-240.png')),
        ],
      ),
    );
  }
}