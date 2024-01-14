import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BooksPageImageSlider extends StatefulWidget {
  const BooksPageImageSlider({Key? key}) : super(key: key);

  @override
  _BooksPageImageSliderState createState() => _BooksPageImageSliderState();
}

class _BooksPageImageSliderState extends State<BooksPageImageSlider> {
  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
    'images/slider_images/Cover_image_1.jpeg',
    'images/slider_images/image_1.jpeg',
    'images/slider_images/image_2.jpeg',
    'images/slider_images/image_3.jpeg',
    'images/slider_images/image_4.jpeg',
    'images/slider_images/image_5.jpeg',
    'images/slider_images/image_6.jpeg',
    'images/slider_images/image_7.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                initialPage: 0,
                autoPlay: true,
                reverse: false,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 3000),
                onPageChanged: (index, reason) => _currentIndex = index,
                // pauseAutoPlayOnTouch: Duration(seconds: 10),
                // scrollDirection: Axis.horizontal,
              ),
              items: imageList
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: EdgeInsets.only(
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        elevation: 6.0,
                        shadowColor: Color.fromARGB(255, 148, 1, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.map((urlOfItem) {
                int index = imageList.indexOf(urlOfItem);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Color(0xffEA091F)
                        : Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
