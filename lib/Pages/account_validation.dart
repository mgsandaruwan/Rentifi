import 'package:car_rent_app/Pages/create_new_password.dart';
import 'package:car_rent_app/Widgets/button.dart';
import 'package:car_rent_app/Widgets/input_widget.dart';
import 'package:flutter/material.dart';

class AccountValidation extends StatelessWidget {
  const AccountValidation({super.key});

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
                "Check your email 📬",
                style: TextStyle(
                  color: Color(0xff172b87),
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Poppins',
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0xff172b87).withOpacity(0.5),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                  children: [
                    TextSpan(
                        text:
                            "We already sent you a 4-digit OTP number to your email "),
                    TextSpan(
                      text: "admin@gmail.com",
                      style: TextStyle(
                        color: Color(0xff172b87),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _otpTextField(context),
                  _otpTextField(context),
                  _otpTextField(context),
                  _otpTextField(context),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InputButton(
                ButtonText: "Continue",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewPassword()),
                  );
                },
              ),
              SizedBox(height: 30,),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Color(0xff172b87).withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),
                    children: [
                      TextSpan(
                          text:
                          "Didn't receive OTP number?  "),
                      TextSpan(
                        text: "Resend",
                        style: TextStyle(
                          color: Color(0xff172b87),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create a single OTP text field
  Widget _otpTextField(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.1,
              color: Color(0xff172b87),
            )),
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: TextField(
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 1,
          decoration: InputDecoration(
            counterText: "",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
