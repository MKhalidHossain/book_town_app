
import 'package:book_town/common_contant/curve_bottom_nev_bar.dart';
import 'package:book_town/screen/aboutusPage.dart';
import 'package:book_town/screen/homepage.dart';
import 'package:flutter/material.dart';

class DreawerAppbar extends StatefulWidget {
  const DreawerAppbar({Key? key}) : super(key: key);

  @override
  State<DreawerAppbar> createState() => _DreawerAppbarState();
}

class _DreawerAppbarState extends State<DreawerAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        backgroundColor: Colors.white,
        shadowColor: Colors.black12,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(200))),
        child: ListView(children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              arrowColor: Colors.amber,
              accountName: Text('Book Town'),
              accountEmail: Text('booktown@gmail.com'),
              currentAccountPicture: Container(
                  child: Image.asset(
                "images/bt.png",
                fit: BoxFit.cover,
              )),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CurveNeviBar(
                            page_index: 2,
                          )));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Card(
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CurveNeviBar(
                                      page_index: 2,
                                    )));
                      },
                      icon: Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Color(0xffEA091F),
                      )),
                  title: Text('Home'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CurveNeviBar(
                            page_index: 0,
                          )));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Card(
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CurveNeviBar(
                                      page_index: 0,
                                    )));
                      },
                      icon: Icon(
                        Icons.menu_book_outlined,
                        size: 30,
                        color: Color(0xffEA091F),
                      )),
                  title: Text('Latest Book'),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Card(
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.folder_copy_outlined,
                        size: 30,
                        color: Color(0xffEA091F),
                      )),
                  title: Text('Category (dept.)'),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                height: 60,
                child: Card(
                  child: ListTile(
                    leading: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_pin,
                          size: 30,
                          color: Color(0xffEA091F),
                        )),
                    title: Text('Author'),
                  ),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Card(
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.help_outline,
                        size: 30,
                        color: Color(0xffEA091F),
                      )),
                  title: Text('Help & Support'),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUS()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
              margin: EdgeInsets.only(right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Card(
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AboutUS()));
                      },
                      icon: Icon(
                        Icons.contact_phone_outlined,
                        size: 30,
                        color: Color(0xffEA091F),
                      )),
                  title: Text('About us'),
                ),
              ),
            ),
          ),

          // ListTile(
          //   leading: Icon(Icons.subject),
          //   title: Text('Subject'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.publish),
          //   title: Text('Publication'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.shopping_cart),
          //   title: Text('Cart Veiw'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.menu_book),
          //   title: Text('Books'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.check_outlined),
          //   title: Text('check out'),
          // ),
        ]),
      ),
    );
  }
}
