import 'package:car_rent_app/Widgets/home_container.dart';
import 'package:car_rent_app/Widgets/promotion_card.dart';
import 'package:car_rent_app/Widgets/search_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: Color(0xff172b87).withOpacity(0.5),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          "Sandaruwan",
                          style: TextStyle(
                            color: Color(0xff172b87),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none_rounded),
                      color: Color(0xff172b87),
                      iconSize: 28,
                    ),
                  ],
                ),
                SearchBox(),
                PromotionCard(),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top vehicle",
                      style: TextStyle(
                        color: Color(0xff172b87),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xff172b87).withOpacity(0.5),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HomeContainer(
                          imgpath: 'assets/bmw.jpeg',
                          title: 'BMW X7-2018',
                          rating: "4.5",
                          review: "(124 review)",
                          price: "\$15.0",
                          pricecontion: "/day"),
                      HomeContainer(
                          imgpath: 'assets/bmws.jpeg',
                          title: 'BMW X7-2018',
                          rating: "4.5",
                          review: "(124 review)",
                          price: "\$15.0",
                          pricecontion: "/day"),
                      HomeContainer(
                          imgpath: 'assets/bmwf.jpeg',
                          title: 'BMW X7-2018',
                          rating: "4.5",
                          review: "(124 review)",
                          price: "\$15.0",
                          pricecontion: "/day"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
