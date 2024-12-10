//Listens countinours to auth state changes
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../pages/profile_page.dart';
import '../login/login.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //Listen to Auth
      stream: Supabase.instance.client.auth.onAuthStateChange, 
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final session = snapshot.hasData ? snapshot.data!.session : null;

        if(session!= null){
          return ProfilePage();
        } else {
          return LoginScreen();
        }
      });
  }
}