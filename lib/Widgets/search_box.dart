import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
          border: Border.all(
            color: Color(0xff172b87).withOpacity(0.2),
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(
                Icons.search,
                color: Color(0xff172b87).withOpacity(0.6),
                size: 30,
              ),
            ),
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search here...",
                  hintStyle: TextStyle(
                    color: Color(0xff172b87).withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {
                  //advanced filter
                },
                icon: Icon(Icons.filter_list_rounded),
                color: Color(0xff172b87).withOpacity(0.5),
                iconSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
