import 'package:firebase_login_and_sign_up_app/screens/login.dart';
import 'package:firebase_login_and_sign_up_app/screens/register.dart';
import 'package:firebase_login_and_sign_up_app/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginSreen(),
    );
  }
}