// ignore_for_file: must_be_immutable

import 'package:book_town/view/last_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOut extends StatefulWidget {
  var data;
  CheckOut({required this.data});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Card(
              color: Color(0xffFFDBCE),
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    height: 240,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(widget.data['img']),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 240,
                      width: 160,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 10, right: 10, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.data['book_name'],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.data['author'],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Edition : ${widget.data['edition']}",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              " Price : ৳${widget.data['price'].toString()}",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
              child: InkWell(
                onTap: () {
                  Get.to(CheckoutPage());
                },
                splashColor: Colors.white,
                borderRadius: BorderRadius.circular(50),
                child: Ink(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.redAccent),
                  child: Center(
                    child: Text(
                      "CheckOut",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
