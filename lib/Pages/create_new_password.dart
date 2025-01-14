import 'package:car_rent_app/Pages/login_page.dart';
import 'package:car_rent_app/Widgets/button.dart';
import 'package:car_rent_app/Widgets/input_widget.dart';

import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                "Create New Password 🔑",
                style: TextStyle(
                  color: Color(0xff172b87),
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                "Please create new password of your Rentifi acount to access again your account.",
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
              InputField(HintText: "Your password"),
              SizedBox(
                height: 30,
              ),
              Text(
                "Retype Password",
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
              InputField(HintText: "Retype your password"),
              SizedBox(
                height: 30,
              ),
              InputButton(
                ButtonText: "Confirm Password",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
