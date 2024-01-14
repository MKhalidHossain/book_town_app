import 'package:book_town/common_contant/drawer.dart';
import 'package:book_town/controller/firebase_controller.dart';
import 'package:book_town/screen/search/search.dart';
import 'package:book_town/view/book_detailes.dart';
import 'package:book_town/view/books_all.dart';
import 'package:book_town/weiget/about_page_image_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final firebaseC = Get.put(FirebaseController(), permanent: true);
  List dataList = [];

  faceData() {
    FirebaseFirestore.instance
        .collection("books")
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        dataList.add({
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

  GlobalKey<ScaffoldState> _scffoldkey = GlobalKey<ScaffoldState>();
  Size screenSize() {
    return MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 253),
        //Code of Appbar
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xffEA091F),
          title: Text(
            'Book Town',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 15, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  IconButton(
                      onPressed: () {
                        showSearch(
                            context: context,
                            // delegate to customize the search bar
                            delegate: CustomSearchDelegate());
                      },
                      icon: Icon(
                        Icons.search_outlined,
                        size: 30,
                      ))
                ],
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: firebaseC.getProducts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 1300,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 13,
                        child: AboutPageImageSlider(),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(5),
                            width: screenSize().width,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: 4,
                                  color: Color(0xffEA091F),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: double.infinity,
                                    width: screenSize().width - 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Category",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BooksAll()));
                                            },
                                            child: Text(
                                              "View all",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 370,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: dataList.length,
                              itemBuilder: (context, index) {
                                return Text(
                                  dataList[index]["book_name"],
                                  style: TextStyle(color: Colors.red),
                                );
                              },
                              // This next line does the trick.
                              // scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: 4,
                                  color: Color(0xffEA091F),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: double.infinity,
                                    width: screenSize().width - 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Semester wise book",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "View all",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                          width: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.size,
                            itemBuilder: (context, index) {
                              final item = snapshot.data!.docs[index].data();
                              return InkWell(
                                onTap: () {
                                  Get.to(BookDetails(item,));
                                },
                                child: Container(
                                  width: 160,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                            height: 100,
                                            width: 100,
                                            child:
                                                Image.network('${item['img']}')),
                                        Text(
                                          '${item['book_name']}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Edition: ${item['edition']}'),
                                        Text('৳: ${item['price']}'),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          // child: ListView(
                          //   // This next line does the trick.
                          //   scrollDirection: Axis.horizontal,
                          //   children: <Widget>[
                          //     // Container(
                          //     //   width: 160.0,
                          //     //   color: Colors.red,
                          //     // ),
                          //     // Container(
                          //     //   width: 160.0,
                          //     //   color: Colors.blue,
                          //     // ),
                          //     // Container(
                          //     //   width: 160.0,
                          //     //   color: Colors.green,
                          //     // ),
                          //     // Container(
                          //     //   width: 160.0,
                          //     //   color: Colors.yellow,
                          //     // ),
                          //     // Container(
                          //     //   width: 160.0,
                          //     //   color: Colors.orange,
                          //     // ),
                          //   ],
                          // ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: 4,
                                  color: Color(0xffEA091F),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: double.infinity,
                                    width: screenSize().width - 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Popular Book",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "View all",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: 370,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber,
                            ),
                            child: ListView(
                              // This next line does the trick.
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  width: 160.0,
                                  color: Colors.red,
                                ),
                                Container(
                                  width: 160.0,
                                  color: Colors.blue,
                                ),
                                Container(
                                  width: 160.0,
                                  color: Colors.green,
                                ),
                                Container(
                                  width: 160.0,
                                  color: Colors.yellow,
                                ),
                                Container(
                                  width: 160.0,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: 4,
                                  color: Color(0xffEA091F),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: double.infinity,
                                    width: screenSize().width - 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Author",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "View all",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                              width: 370,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                  width: 10,
                                ),
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.size,
                                itemBuilder: (context, index) {
                                  final item =
                                      snapshot.data!.docs[index].data();
                                  return Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 60,
                                        backgroundColor: Colors.brown.shade800,
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Center(
                                              child: Text('${item['author']}')),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("${item['author']}")
                                    ],
                                  );
                                },
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),

        key: _scffoldkey,
        drawer: DreawerAppbar(),
        //bottomNavigationBar: CurveNeviBar(),
      ),
    );
  }
}
