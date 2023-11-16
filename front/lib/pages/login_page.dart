// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class BitArtLoginPage extends StatefulWidget {
  const BitArtLoginPage({Key? key}) : super(key: key);

  @override
  State<BitArtLoginPage> createState() => _BitArtLoginPageState();
}

class _BitArtLoginPageState extends State<BitArtLoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
Future<void> loginUser(String email, String password) async {
  var url = Uri.parse('http://url/login'); 
  var response = await http.post(
    url,
    body: {
      'email': email,
      'password': password,
    },
  );
}
   bool rememberMe = false;
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
                  height: 200,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 1, bottom: 1),
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
                            child: TextField(
                              obscureText: false,
                              style: TextStyle(color: Colors.black), // Set text color
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200], // Set light gray background color
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Remove border
                                  borderRadius: BorderRadius.circular(5), // Add border radius
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
                          padding: EdgeInsets.only(top: 15, right: 2, bottom: 15),
                          margin: EdgeInsets.only(right: 17),
                          child: Icon(Icons.email, size: 30, color: Colors.white),
                          decoration: BoxDecoration(
                            color: Color(0xDB2C736C),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
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
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(color: Colors.black), // Set text color
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200], // Set light gray background color
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Remove border
                                  borderRadius: BorderRadius.circular(5), // Add border radius
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
                          padding: EdgeInsets.only(top: 15, right: 2, bottom: 15),
                          margin: EdgeInsets.only(right: 17),
                          child: Icon(Icons.lock, size: 30, color: Colors.white),
                          decoration: BoxDecoration(
                            color: Color(0xDB2C736C),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
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
                                border: Border.all(color: Color(0xDB2C736C), width: 2),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child:rememberMe ? Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Color(0xDB2C736C),
                                ):null,
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
                        // Add your login logic here
                        loginUser('user@example.com', 'password123');
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
