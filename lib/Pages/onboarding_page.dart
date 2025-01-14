import 'package:car_rent_app/Pages/login_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentPage = 0; // Track the current page index
  final PageController _pageController = PageController();

  final List<Map<String, String>> _pages = [
    {
      'image': 'assets/bmw.jpeg',
      'title': 'Endless Option',
      'description': "Choose of hundered of models you won't find anywhere else. Pick it up or get it delivered where you want it",
    },
    {
      'image': 'assets/bmws.jpeg',
      'title': 'Drive Confidently',
      'description': "Drive confidently with your choice of protection plans. All plans include varying level of insurance from Sri Lanka.",
    },
    {
      'image': 'assets/bmwf.jpeg',
      'title': '24/7 Support',
      'description': 'Rest easy knowing that everyone in Rentifi community is screened and support roadside assistance.',
    },
  ];

  // Update the page index and navigate when page changes
  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  // Navigate to the next page
  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  // Skip to the next onboarding page
  void _skipToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void _continueToLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Container(
                  width: 350,
                  height: 370,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
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
                        return Center(
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
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                _pages[_currentPage]['title']!,
                style: TextStyle(
                  color: Color(0xff172b87),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 23, top: 10),
              child: Text(
                _pages[_currentPage]['description']!,
                style: TextStyle(
                  color: Color(0xff172b87).withOpacity(0.5),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20, // Space between text and dots
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(3, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: _currentPage == index ? 12 : 8,
                        height: _currentPage == index ? 12 : 8,
                        decoration: BoxDecoration(
                          color: _currentPage == index ? Color(0xff172b87): Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    }),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: _skipToNextPage,
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff172b87),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Next Button
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff172b87),
                        ),
                        child: TextButton(
                          onPressed: _currentPage == 2 ? _continueToLogin : _nextPage,
                          child: Text(
                            _currentPage == 2 ? "Continue" : "Next",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
