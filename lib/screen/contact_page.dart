import 'package:book_town/common_contant/drawer.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  GlobalKey<ScaffoldState> _scffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //Code of Appbar
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xffEA091F),
          title: Text(
            'Contact Us',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Icon(
                    Icons.search_outlined,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: Container(
          color: Colors.pink,
        ),

        key: _scffoldkey,
        drawer: DreawerAppbar(),
      ),
    );
  }
}
