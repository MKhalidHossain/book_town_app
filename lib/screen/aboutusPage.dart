import 'package:book_town/weiget/about_page_image_slider.dart';
import 'package:flutter/material.dart';

class AboutUS extends StatefulWidget {
  const AboutUS({super.key});

  @override
  State<AboutUS> createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 253),
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xffEA091F),
          title: Text(
            'About Book Town',
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
            height: 1360,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 16,
                    child: AboutPageImageSlider(),
                  ),
                  Expanded(
                    flex: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Our Story (B T)",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "\nAbraham Lincoln said “Books serve to show a man that those original thoughts of his aren't very new after all.”That means book is the source of a new thought of a man. So, the more one will read the more one will renovate himself. From this thought we are here to develop an e-bookstore app.Our aim is, all the courses books will be available in our app as hardcopy and softcopy as pdf. The main objective is to provide a second-hand book at a convenient price. It will save the time of the User by providing books online app. There are many students who want services directly without necessarily going to a shopping malls or stores. They will want to have the same service by just accessing the internet and making their purchases. This reduces transportation cost and time can be spent instead on other important activities and its environmental friendly. Especially students who need books for their coursework and many students enjoy reading books. But they are unable to buy them due to the high price. However, very few stores in today's society provide these services of buying and selling used books, so we will develop this app to help students.There is available technology to build such apps and provide secure and reliable services to customers. In this case, the online secondhand book shop is just one of them trying to use the power of internet and technology to develop an app that can make book recycling and sales easier. Students need many different types of literature in their studies. As they go through the educational process they move gradually to the next level and other students move to that level they were previously in. It can be described as a circular pattern and text books used in this cycle can easily be accessible to another student in that cycle using the internet as the main meeting place. Many students find textbooks too expensive to buy at bookstores and many courses only use the required textbooks a few days in a semester. This becomes very wasteful and frustrating for students. This app provides a service in which students can buy books online without any treble. There will be free shipping. They do need to register with the app in order to books. Payment information will be requested after adding any numbers of books in the cart. Hence an app of this nature that focuses on books can come a long way to make accessibility to secondhand books just a click away at a good and reasonable price.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
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
