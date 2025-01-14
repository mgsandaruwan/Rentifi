import 'package:car_rent_app/Widgets/button.dart';
import 'package:car_rent_app/Widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'account_validation.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
                "Forgot Password? 🔒",
                style: TextStyle(
                  color: Color(0xff172b87),
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                "Please input your email to recover your Rentifi account.",
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
                height: 20,
              ),
              InputButton(
                ButtonText: "Recover account",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccountValidation()),
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
