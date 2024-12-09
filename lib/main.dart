// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:superbase_app/home.dart';


void main() async {
  await Supabase.initialize(
    url: 'https://osvwmdaisocgzulwcurl.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9zdndtZGFpc29jZ3p1bHdjdXJsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM3NTY3NjMsImV4cCI6MjA0OTMzMjc2M30.2GZzStd5hZFFNWJWi1P0v3jKeaWI5uigghRng2UnJe4',
  );

  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
