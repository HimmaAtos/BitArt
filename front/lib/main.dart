// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:front/my_flutter_app_icons.dart';
import 'package:front/pages/home.dart';
import 'package:front/pages/login_page.dart';
import 'package:front/pages/register.dart';


void main() {
  

  runApp(MaterialApp(
    routes: <String, WidgetBuilder>{
      "/home": (BuildContext context) => const BitArtHome(),
      "/LoginPage": (BuildContext context) => const BitArtLoginPage(),
      "/register": (BuildContext context) => const Register(),
      // "/secret": (BuildContext context) => const SecretPage(),
    },
    initialRoute: "/home",
    title: 'Bit\'Art',
    debugShowCheckedModeBanner: false,
    home: const BitArtHome(),
  ));
}

