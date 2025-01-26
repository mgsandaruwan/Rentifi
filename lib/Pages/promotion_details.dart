import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PromotionDetailsPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String promoCode;

  const PromotionDetailsPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.promoCode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Image
                Image.asset(
                  image,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                // Back button
                Positioned(
                  top: 40,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                    iconSize: 28,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Title
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff172b87),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 16),
            // Promo Code Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xff172b87).withOpacity(0.2),
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, top: 7.0),
                            child: Text(
                              "PROMO CODE",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff172b87).withOpacity(0.7),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, top: 7.0),
                            child: Text(
                              promoCode,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff172b87),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff172b87),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Copy promo code to clipboard
                            Clipboard.setData(ClipboardData(text: promoCode));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Promo code copied to clipboard!',
                                  style: TextStyle(color: Colors.black),
                                ),
                                backgroundColor: Color(0xffe4e7ec),
                              ),
                            );
                          },
                          child: Text(
                            "Copy",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            // Description
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                description,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff172b87).withOpacity(0.5),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
              ' Terms & Conditions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff172b87),
              ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                '• Minimum rent of Rs.5000.00 vale\n'
                '• All rent process only accepted in Rentifi\n'
                '• Only accept for credit card payments\n',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff172b87).withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
