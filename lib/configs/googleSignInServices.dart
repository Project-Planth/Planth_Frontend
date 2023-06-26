import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService{
  static final _googleSignIn = GoogleSignIn(scopes: [
    'email',
    "https://www.googleapis.com/auth/userinfo.profile"
    ],);

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
  static Future logout() => _googleSignIn.disconnect();
}