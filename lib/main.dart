import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teenpay/screens/home_screen/mainhomescreen.dart';
import 'package:teenpay/screens/profile_sreen/main_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurant app',
        home: MainprofileScreen());
  }
}
