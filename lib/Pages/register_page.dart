import 'package:car_rent_app/Pages/login_page.dart';
import 'package:car_rent_app/Widgets/button.dart';
import 'package:car_rent_app/Widgets/input_widget.dart';
import 'package:car_rent_app/Widgets/input_widget_withicon.dart';
import 'package:car_rent_app/Widgets/login_with_social.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_nav.dart';
import 'home_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nice to know you! 😉",
                style: TextStyle(
                  color: Color(0xff172b87),
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                "It's your first time to use Rentifi.",
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
                "Full Name",
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
                "Email Address",
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
              InputButton(ButtonText: "Register", onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CustomBottomNavBar()),
                );
              },
              ),
              SizedBox(
                height: 30,
              ),
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
                      "or register with",
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
              ),
              SizedBox(
                height: 30,
              ),
              SocialLogin(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Already have a Rentifi account",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff172b87).withOpacity(0.5),
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff172b87),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
