import 'package:flutter/material.dart';
import 'package:splash_screen/view/Home.dart';
import 'package:splash_screen/view/Profile.dart';
void main(){
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

