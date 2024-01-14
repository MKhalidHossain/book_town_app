import 'package:book_town/screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    Stripe.publishableKey = 'pk_test_51N9l0sAPC8uTPUuIyGJxiInTAqes1Bw7A3lamFjxkonkNsfnteBSFz6y50MIG1Fm2egdTbXsRXczj0R2wwcsCSqP00bNCzXgQn';

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SignUp(),
      // home: CurveNeviBar(
      //   page_index: 0,
      // ),
      //  BooksAll(),

      // SignIn(),

      // CurveNeviBar(
      //   page_index: 2,
      // )

      //SignUp()
    );
  }
}
