// ignore_for_file: unused_local_variable

import 'package:book_town/common_contant/curve_bottom_nev_bar.dart';
import 'package:book_town/screen/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  void signUptoFirebase() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passController.text.trim(),
      );
      print('Navigate');
    Get.to(CurveNeviBar(page_index: 0));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Sign Up Success")));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'User Registration',
                  style: TextStyle(
                      color: Color(0xffEA091F),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(
                      'https://flyclipart.com/thumb2/login-935679.png'),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign up and enjoy life during the time you \n just saved on book town',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: "write email",
                      labelText: "Email",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _passController,
                  decoration: InputDecoration(
                      hintText: "write password",
                      labelText: "Password",
                      border: OutlineInputBorder()),
                ),
                TextButton(
                    onPressed: () {
                      signUptoFirebase();
                    },
                    child: Text("Sign UP")),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text("You already Have an Account"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignIn()));
                        },
                        child: Text("Sign In")),
                  ],
                )
              ],
            )),
            ),
        ));
  }
}
