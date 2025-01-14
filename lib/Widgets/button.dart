import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String ButtonText;

  const InputButton(
      {super.key, required this.ButtonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 45,
        width: 350,
        decoration: BoxDecoration(
          color: Color(0xff172b87),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              ButtonText,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
