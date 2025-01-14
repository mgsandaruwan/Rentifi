import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // Google Sign-In method
  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return; // User canceled the sign-in process
      }
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Firebase sign-in
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("Signed in with Google: ${googleUser.displayName}");
    } catch (e) {
      print(e);
    }
  }

  // Facebook Sign-In method
  Future<void> _signInWithFacebook() async {
    try {
      final result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        final OAuthCredential credential = FacebookAuthProvider.credential(result.accessToken!.token);

        // Firebase sign-in
        await FirebaseAuth.instance.signInWithCredential(credential);
        print("Signed in with Facebook: ${result.accessToken!.userId}");
      } else {
        print(result.message); // Handle failure
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Divider with "or login with"
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "or login with",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20),

            // Google Login Button
            ElevatedButton.icon(
              onPressed: _signInWithGoogle,
              icon: Image.asset('assets/google_logo.png', height: 24), // Your Google logo
              label: Text("Login with Google"),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                side: BorderSide(color: Color(0xff172b87), width: 1.5),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
            ),
            SizedBox(height: 15),

            // Facebook Login Button
            ElevatedButton.icon(
              onPressed: _signInWithFacebook,
              icon: Image.asset('assets/facebook_logo.png', height: 24), // Your Facebook logo
              label: Text("Login with Facebook"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff3b5998),
                onPrimary: Colors.white,
                side: BorderSide.none,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
