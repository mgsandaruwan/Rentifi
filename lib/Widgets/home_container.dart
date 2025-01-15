import 'package:flutter/material.dart';

class HomeContainer extends StatefulWidget {
  final String imgpath;
  final String title;
  final String rating;
  final String review;
  final String price;
  final String pricecontion;

  const HomeContainer(
      {super.key,
        required this.imgpath,
        required this.title,
        required this.rating,
        required this.review,
        required this.price,
        required this.pricecontion});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 225,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffe4e7ec),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 500,
              spreadRadius: 5,
              offset: Offset.zero,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:10.0,left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Curves the image
                    child: Image.asset(
                      widget.imgpath,
                      width: 160,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 8.0),
                 child: Text(
                    widget.title,
                    style: TextStyle(
                      color: Color(0xff172b87),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                    ),
                             ),
               ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 3,),
                    Text(
                      widget.rating,
                      style: TextStyle(
                        color: Color(0xff172b87),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(width: 2,),
                    Text(
                      widget.review,
                      style: TextStyle(
                        color: Color(0xff172b87),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    widget.price,
                    style: TextStyle(
                      color: Color(0xff172b87),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    widget.pricecontion,
                    style: TextStyle(
                      color: Color(0xff172b87),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
