import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  // Get a reference your Supabase client
  final supabase = Supabase.instance.client;
  //Sigin With EmailAndPAssword
  Future<AuthResponse> signInWithEmailPassword(
      String email, String password) async {
    return await supabase.auth
        .signInWithPassword(email: email, password: password);
  }

  //Signup with EmailAndPassword
  Future<AuthResponse> signUpWithEmailPassword(
      String email, String password) async {
    return await supabase.auth.signUp(email: email, password: password);
  }

  //SigOut
  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  //Get UserEmail
  String? getCurrentUserEmail() {
    final session = supabase.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
  //Get UserName
  // String? getCurrentUserName() {
  //   final session = supabase.auth.currentSession;
  //   final user = session?.user;
  // return user?.UserName;
  // }
}
