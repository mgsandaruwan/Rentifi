import 'package:flutter/material.dart';
import '../Pages/promotion_details.dart';

class PromotionCard extends StatefulWidget {
  const PromotionCard({super.key});

  @override
  _PromotionCardState createState() => _PromotionCardState();
}

class _PromotionCardState extends State<PromotionCard> {
  int _currentPage = 0; // Track the current page index
  final PageController _pageController = PageController();

  final List<Map<String, String>> _pages = [
    {
      'image': 'assets/bmw.jpeg',
      'title': 'New Year 2025, 25% Off Promo',
      'description':
          'To celebrate new year 2025 we are giving a special promo for you Redeem a rent at car and get new year reward for every checkout this period',
      'promoCode': 'RENTIFI25',
    },
    {
      'image': 'assets/bmws.jpeg',
      'title': 'HNB Bank Card, 10% Off Promo',
      'description':
          'To celebrate new year 2025 we are giving a special promo for you Redeem a rent at car and get new year reward for every checkout this period',
      'promoCode': 'HNB10',

    },
    {
      'image': 'assets/bmwf.jpeg',
      'title': 'BOC Bank Card, 5% Off Promo',
      'description':
          'To celebrate new year 2025 we are giving a special promo for you Redeem a rent at car and get new year reward for every checkout this period',
      'promoCode': 'BOC5',

    },
  ];

  // Update the page index and navigate when the page changes
  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  // Navigate to the PromotionDetailsPage with promotion details
  void _onImageTap(Map<String, String> promotion) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PromotionDetailsPage(
          image: promotion['image']!,
          title: promotion['title']!,
          description: promotion['description']!,
          promoCode: promotion['promoCode']!,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    children: _pages.map((page) {
                      return GestureDetector(
                        onTap: () => _onImageTap(page),
                        child: Image.asset(
                          page['image']!,
                          width: 350,
                          height: 370,
                          fit: BoxFit.cover,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            _pages[_currentPage]['title']!,
            style: TextStyle(
              color: Color(0xff172b87),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(3, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: _currentPage == index ? 8 : 6,
                    height: _currentPage == index ? 8 : 6,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Color(0xff172b87)
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
