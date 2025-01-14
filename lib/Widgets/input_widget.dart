import 'package:flutter/material.dart';
class InputField extends StatelessWidget {
  final String HintText;
  const InputField({super.key, required this.HintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xff172b87).withOpacity(0.5),
          width: 1.5,
        )
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10,bottom: 11),
                hintText: HintText,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Color(0xff172b87).withOpacity(0.5), // Change hint text color
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
