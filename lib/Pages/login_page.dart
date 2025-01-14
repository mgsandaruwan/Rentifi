import 'package:car_rent_app/Widgets/button.dart';
import 'package:car_rent_app/Widgets/input_widget.dart';
import 'package:car_rent_app/Widgets/input_widget_withicon.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to, Rentifi 👌",
              style: TextStyle(
                color: Color(0xff172b87),
                fontSize: 25,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              "Enter Your Rentifi acoount to continue.",
              style: TextStyle(
                color: Color(0xff172b87).withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Email address",
              style: TextStyle(
                color: Color(0xff172b87),
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InputField(HintText: "Your email address"),
            SizedBox(
              height: 30,
            ),
            Text(
              "Password",
              style: TextStyle(
                color: Color(0xff172b87),
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PasswordField(),
            SizedBox(
              height: 30,
            ),
            InputButton(ButtonText: "Login"),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Forget Pasword", style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff172b87),
                  ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xff172b87).withOpacity(0.5),
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "or login with",
                    style: TextStyle(
                      color: Color(0xff172b87).withOpacity(0.7),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xff172b87).withOpacity(0.5),
                    thickness: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
