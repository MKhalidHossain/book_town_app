// ignore_for_file: must_be_immutable, non_constant_identifier_names, unnecessary_statements

import 'package:book_town/screen/books_page.dart';
import 'package:book_town/screen/homepage.dart';
import 'package:book_town/screen/profile_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurveNeviBar extends StatefulWidget {
  CurveNeviBar({Key? key, required this.page_index}) : super(key: key);
  int page_index;
  @override
  State<CurveNeviBar> createState() => _CurveNeviBarState();
}

class _CurveNeviBarState extends State<CurveNeviBar> {
  List<Widget> pages = [
    BooksPage(),
    // CartPage(),
    HomePage(),
    //  ContactPage(),
    ProfilePage()
  ];
  int forCount = 0;
  tempIncrement() {
    forCount++;
  }

  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    forCount == 0
        ? {currentIndex = widget.page_index, forCount = 2}
        : forCount = 3;

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: widget.page_index,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        height: 50.0,
        color: Color.fromARGB(255, 236, 236, 236),
        buttonBackgroundColor: Color.fromARGB(255, 236, 236, 236),
        backgroundColor: Color(0xffEA091F),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 600),
        items: [
          Icon(
            Icons.menu_book,
            size: 30,
            color: Color(0xffEA091F),
          ),
          // Icon(
          //   Icons.shopping_cart,
          //   size: 30,
          //   color: Color(0xffEA091F),
          // ),
          Icon(
            Icons.home,
            size: 30,
            color: Color(0xffEA091F),
          ),
          // Icon(
          //   Icons.phone,
          //   size: 30,
          //   color: Color(0xffEA091F),
          // ),
          Icon(
            Icons.person,
            size: 30,
            color: Color(0xffEA091F),
          )
        ],
      ),
    );
  }
}
