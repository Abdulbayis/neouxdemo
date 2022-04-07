import 'package:flutter/material.dart';
// import 'package:neuox/api/rest_api.dart';
import 'package:neuox/change_password.dart';
import 'package:neuox/verification/continew_with_phone.dart';
import 'package:neuox/forgotpassword.dart';
import 'package:neuox/login.dart';
import 'package:neuox/registration.dart';
import 'package:neuox/sign_in.dart';
import 'package:neuox/sign_up.dart';
import 'package:neuox/verification/home.dart';
import 'package:neuox/verification/test.dart';




import 'verification/verify_phone.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      home: LoginDemo(),
      routes: {
        'Home':(context) {
          return HomePage();
        },
        
      },
    );
  }
}

