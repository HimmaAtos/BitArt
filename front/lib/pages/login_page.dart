// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:front/models/UtilisateurModel.dart';
import 'package:front/services/utilisateurService.dart';

import 'package:http/http.dart' as http;

class BitArtLoginPage extends StatefulWidget {
  const BitArtLoginPage({super.key});

  @override
  State<BitArtLoginPage> createState() => _BitArtLoginPageState();
}

class _BitArtLoginPageState extends State<BitArtLoginPage> {
  Map infosUser = {};
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void sendInformationsForLoginToServer(Map infosUser, String endPoint) {
    var responseRequest = http.post(Uri.parse(endPoint), body: infosUser);
    print(responseRequest.toString());
    //log(12);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xDB2C736C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Center(
                child: Image(
                  image: AssetImage("images/logo-small.png"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      "LOGIN TO CONTINUE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.only(top: 30, left: 30),
                          child: SizedBox(
                            width: 300,
                            child: TextFormField(
                              controller: emailController,
                              obscureText: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Saisir un email valide";
                                }
                              },
                              style: TextStyle(
                                  color: Colors.black), // Set text color
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[
                                    200], // Set light gray background color
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Remove border
                                  borderRadius: BorderRadius.circular(
                                      5), // Add border radius
                                ),
                                hintText: 'E-mail',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(top: 8, right: 2),
                          margin: EdgeInsets.only(right: 17),
                          child:
                              Icon(Icons.email, size: 50, color: Colors.white),
                          decoration: BoxDecoration(
                            color: Color(0xDB2C736C),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.only(top: 30, left: 30),
                          child: SizedBox(
                            width: 300,
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Saisir un mot de passe valide";
                                }
                              },
                              style: TextStyle(
                                  color: Colors.black), // Set text color
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[
                                    200], // Set light gray background color
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Remove border
                                  borderRadius: BorderRadius.circular(
                                      5), // Add border radius
                                ),
                                hintText: 'Password',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(top: 8, right: 2),
                          margin: EdgeInsets.only(right: 17),
                          child:
                              Icon(Icons.lock, size: 50, color: Colors.white),
                          decoration: BoxDecoration(
                            color: Color(0xDB2C736C),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Added spacing
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xDB2C736C), width: 2),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Color(0xDB2C736C),
                                ),
                              ),
                            ),
                            Text(
                              "Remember Me",
                              style: TextStyle(
                                color: Color(0xDB2C736C),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Added spacing
                  Container(
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [Colors.yellow, Color(0xDB2C736C)],
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        UtilisateurModel user = new UtilisateurModel();

                        user.email = emailController.text;
                        user.password = passwordController.text;
                        UtilisateurState().login(user);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Added spacing
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 90),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Or",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20), // Added spacing
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add navigation logic to the signup screen
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
