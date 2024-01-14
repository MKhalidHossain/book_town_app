// ignore_for_file: must_be_immutable

import 'package:book_town/view/checkOut_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetails extends StatefulWidget {
  var book;
  BookDetails(this.book);

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
// Future addToCart()async{
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   var currentUser = _auth.currentUser;
//   CollectionReference _collectionref = FirebaseFirestore.instance.collection("users-cart-items");
//   return _collectionref.doc(currentUser!.email).collection("items").doc().set(
//     {
//       "name":widget.book["book_name"],
//       "image":widget.book["img"],
//       "price":widget.book["price"],

//     }
//   ).then((value) => print("added to cart")) ;

// }

  List data = [];
  faceData() {
    FirebaseFirestore.instance
        .collection("books")
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        data.add({
          'id': element["id"],
          'author': element["author"],
          'book_name': element["book_name"],
          'edition': element["edition"],
          'img': element["img"],
          'price': element["price"],
        });
      });
      setState(() {});
    });
  }

  @override
  void initState() {
    faceData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book['book_name'],
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Center(
          child: Column(
            children: [
              Expanded(flex: 40, child: Image.network(widget.book['img'])),
              Expanded(
                  flex: 34,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(widget.book['book_name'],
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20)),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Author : ${widget.book['author']}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(" Edition : ${widget.book['edition']}",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black54,
                                fontSize: 16)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(" ৳ ${widget.book['price']}",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xffEA091F),
                                fontSize: 22)),
                        Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2TE-3ZQPE2Ncx4GY_0R2AprU5TnaYoPuubYocT1qAoYUtZAoIF56zbQp4yBm5nsjYXEQ&usqp=CAU"),
                              ),
                              Text(" In Stock",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 46,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18)),
                          Text(
                              "You can find everything you need to know about in a single book: this one! This Book is a perfect review for those who have finished college, a great introduction for those who are just starting university, and a supplement for those beginning a good career. \nWe’ve taken a look at some of the best computer science and engineering books and created a list for both beginners and IT professionals alike. These books serve as introductions, refreshers, and deeper explorations into the philosophies .",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14)),
                        ],
                      ),
                    ),
                  )),
              // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
                child: InkWell(
                  onTap: () {
                    Get.to(CheckOut(data: widget.book));
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
                        "Add to Cart",
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
      ),
    );
  }
}
