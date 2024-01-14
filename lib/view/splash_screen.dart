import 'dart:async';

import 'package:book_town/view/temp.dart';
import 'package:flutter/material.dart';

class SolashScreen extends StatefulWidget {
  const SolashScreen({super.key});

  @override
  State<SolashScreen> createState() => _SolashScreenState();
}

class _SolashScreenState extends State<SolashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Details()));
    });
    return Scaffold();
  }
}
