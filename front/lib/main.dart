
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:front/pages/login_page.dart';
import 'package:front/pages/my_flutter_app_icons.dart';

//import 'package:hexcolor/hexcolor.dart';


void main() {

  runApp(MaterialApp(
    routes: <String, WidgetBuilder>{
      "/LoginPage": (BuildContext context) => const BitArtLoginPage(),
     //  "/home": (BuildContext context) => const BitArtHome(),
      //"/register": (BuildContext context) => const Register(),
      // "/secret": (BuildContext context) => const SecretPage(),
    },
    initialRoute: "/LoginPage",
    title: 'Bit\'Art',
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(
    //   primarySwatch: Colors.blue,
    // ),
    home: const BitArtLoginPage(),
  ));
}

