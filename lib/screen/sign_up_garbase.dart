// import 'package:flutter/maSignUpGterial.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class SignUpG extends StatefulWidget {
//   const SignUpG({super.key});

//   @override
//   State<SignUpG> createState() => _SignUpGState();
// }

// class _SignUpGState extends State<SignUpG> {
//   final _emailController = TextEditingController();
//   final _passController = TextEditingController();

//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: SafeArea(
//         child: Scaffold(
//           body: Center(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'User Registration',
//                   style: TextStyle(
//                       color: Color(0xffEA091F),
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 CircleAvatar(
//                   radius: 60.0,
//                   backgroundImage: NetworkImage(
//                       'https://flyclipart.com/thumb2/login-935679.png'),
//                   backgroundColor: Colors.transparent,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'Welcome!',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Sign up and enjoy life during the time you \n just saved on book town',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Your Name",
//                         labelText: "Please Enter Your Name",
//                         prefixIcon: IconButton(
//                             onPressed: () {}, icon: Icon(Icons.person)),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide(
//                                 width: 5,
//                                 color: Colors.greenAccent,
//                                 style: BorderStyle.solid))),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     // controller: _emailController,
//                     decoration: InputDecoration(
//                         hintText: "Your Email",
//                         labelText: "Please Enter Your Email",
//                         prefixIcon: IconButton(
//                             onPressed: () {}, icon: Icon(Icons.email_rounded)),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide(
//                                 width: 5,
//                                 color: Colors.greenAccent,
//                                 style: BorderStyle.solid))),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),

//                 //Phone no kaj kora lagbe

//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Phone",
//                         labelText: "Please Enter Your Phone Number",
//                         prefixIcon: IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.phone_android_rounded)),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide(
//                                 width: 5,
//                                 color: Colors.greenAccent,
//                                 style: BorderStyle.solid))),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Password",
//                         labelText: "Please Enter Your Password",
//                         prefixIcon: IconButton(
//                             onPressed: () {}, icon: Icon(Icons.lock)),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide(
//                                 width: 5,
//                                 color: Colors.greenAccent,
//                                 style: BorderStyle.solid))),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Confirm Password",
//                         labelText: "Please Confirm Your Password",
//                         prefixIcon: IconButton(
//                             onPressed: () {}, icon: Icon(Icons.lock)),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide(
//                                 width: 5,
//                                 color: Colors.greenAccent,
//                                 style: BorderStyle.solid))),
//                   ),
//                 ),
//                 Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: OutlinedButton(
//                       style: OutlinedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         side: BorderSide(color: Colors.red, width: 5),
//                       ),
//                       onPressed: () {},
//                       child: const Text(
//                         'Sign Up',
//                         style: TextStyle(fontSize: 22),
//                       ),
//                     )),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
