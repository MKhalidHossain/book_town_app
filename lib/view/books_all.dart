import 'package:book_town/controller/firebase_controller.dart';
import 'package:book_town/view/book_detailes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BooksAll extends StatefulWidget {
  BooksAll({super.key});

  @override
  State<BooksAll> createState() => _BooksAllState();
}

class _BooksAllState extends State<BooksAll> {
  final firebaseC= Get.put(FirebaseController(),permanent: true);
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
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: firebaseC.getProducts(),
        builder: (context, snapshot) {
           if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
          return  GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: snapshot.data!.size,
          itemBuilder: (context, index) {
            final item = snapshot.data!.docs[index].data();
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookDetails(item)));
                },
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 60, child: Image.network(item['img'])),
                        Expanded(
                            flex: 40,
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(item["book_name"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(" Edition : ${item["edition"]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(" ৳ ${item
                                  ["price"]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffEA091F),
                                          fontSize: 18)),
                                ],
                              ),
                            )),
                      ],
                    )),
              ),
            );
          });
        },
        )

      // ListView.builder(
      //     itemCount: data.length,
      //     itemBuilder: (_, index) {
      //       return Center(
      //           child: Column(
      //         children: [
      //           Text(data[index]['author']),
      //           Text("${index}"),
      //         ],
      //       ));
      //     })
    );
  }
}
