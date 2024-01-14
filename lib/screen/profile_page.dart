import 'package:book_town/controller/firebase_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Size screenSize() {
    return MediaQuery.of(context).size;
  }

  final firebaseC = Get.put(FirebaseController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 253),
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xffEA091F),
          title: Text(
            'My Profile',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 15, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 650,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amber,
                                  //Image add korte hobe <profile>
                                  //image:
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "name :",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "user id :",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "email :",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "Contact:",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Column(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 241, 241, 241),
                              ),
                              onPressed: () {},
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.settings,
                                        size: 30,
                                        color: Color(0xffEA091F),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Account Settings',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 241, 241, 241),
                              ),
                              onPressed: () {},
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_outline_outlined,
                                        size: 30,
                                        color: Color(0xffEA091F),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'My Favorites',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 241, 241, 241),
                              ),
                              onPressed: () {},
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.notifications_active_outlined,
                                        size: 30,
                                        color: Color(0xffEA091F),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Notification',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 241, 241, 241),
                              ),
                              onPressed: () {},
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.shopping_basket_outlined,
                                        size: 30,
                                        color: Color(0xffEA091F),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'My Order',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 241, 241, 241),
                              ),
                              onPressed: () {},
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.sell_outlined,
                                        size: 30,
                                        color: Color(0xffEA091F),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'My Sells',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 241, 241, 241),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                          'Logout',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        content: Text(
                                          'Are you sure?',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'Cancle',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                firebaseC.logout();
                                              },
                                              child: Text(
                                                'Confirm',
                                                style: TextStyle(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )),
                                        ],
                                      );
                                    });
                              },
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.logout,
                                        size: 30,
                                        color: Color(0xffEA091F),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Log Out',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
