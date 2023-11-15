// ignore_for_file: sort_child_properties_last, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:front/my_flutter_app_icons.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xDB2C736C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: const Center(
                child: Image(
                  image: AssetImage("images/logo-small.png"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    color: Colors.white),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(top: 30),
                          child: const Text(
                            "CREATE ACCOUNT",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                                  padding: const EdgeInsets.only(top: 30, left: 30),
                                  child: const SizedBox(
                                    width: 300,
                                    child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5))),
                                        labelText: 'First name',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 2, bottom: 15),
                                    margin: const EdgeInsets.only(right: 17),
                                    child: const Icon(
                                      Icons.account_circle,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    decoration: const BoxDecoration(
                                      //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        )),
                                  ))
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                                  padding:
                                  const EdgeInsets.only(top: 30, left: 30),
                                  child: const SizedBox(
                                    width: 300,
                                    child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5))),
                                        labelText: 'Last name',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 2, bottom: 15),
                                    margin: const EdgeInsets.only(right: 17),
                                    child: const Icon(
                                      Icons.account_circle,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    decoration: const BoxDecoration(
                                      //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        )),
                                  ))
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                                  padding:
                                  const EdgeInsets.only(top: 30, left: 30),
                                  child: const SizedBox(
                                    width: 300,
                                    child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5))),
                                        labelText: 'Email',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 2, bottom: 15),
                                    margin: const EdgeInsets.only(right: 17),
                                    child: const Icon(
                                      Icons.email,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    decoration: const BoxDecoration(
                                      //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        )),
                                  ))
                            ],
                          ),
                      Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                                  padding:
                                  const EdgeInsets.only(top: 30, left: 30),
                                  child: const SizedBox(
                                    width: 300,
                                    child: TextField(
                                      obscureText:false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5))),
                                        labelText: 'Phone',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 2, bottom: 15),
                                    margin: const EdgeInsets.only(right: 17),
                                    child: const Icon(
                                      Icons.phone,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    decoration: const BoxDecoration(
                                      //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        )),
                                  ))
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                                  padding:
                                  const EdgeInsets.only(top: 30, left: 30),
                                  child: const SizedBox(
                                    width: 300,
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5))),
                                        labelText: 'Password',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 2, bottom: 15),
                                    margin: const EdgeInsets.only(right: 17),
                                    child: const Icon(
                                      Icons.lock,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    decoration: const BoxDecoration(
                                      //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        )),
                                  ))
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Expanded(
                                flex : 2,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30, top: 13, right: 5),
                                    //padding: EdgeInsets.only(right: 10),
                                    width: 20,
                                    height: 20,

                                    decoration: BoxDecoration(color: Color(0xFF2C736C)),
                                  ),
                              ),
                              Expanded(
                                flex: 10,

                                child : Container(
                                  margin: EdgeInsets.only(top: 13),
                                  child: Text(
                                    "By continue you accept our terms & policy",

                                    style: TextStyle(fontSize: 12, color: Color(0xFF2C736C),
                                    letterSpacing: 1),
                                  ),
                                )
                              )
                            ]
                          ),

                      Container(
                        width: 200,
                        height: 45,
                        margin: EdgeInsets.only(top: 12, bottom: 8),
                        child:  Center(
                          child: Text("SIGN UP",
                            style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,),
                          ),

                        ),
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-1.00, 0.00),
                            end: Alignment(1, 0),
                            colors: [Color(0xFFE3B71D), Color(0xFF2C736C)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0x995B5B5B),
                                ),
                              ),
                            ),
                          ),
                           
                          SizedBox(width: 5,),
                          Text(
                            'Or',
                            style: TextStyle(
                              color: Color(0x995B5B5B),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            width: 60,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0x995B5B5B),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                  "Already a user?  ",
                                style: TextStyle(
                                  color: Color(0xFF5B5B5B),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),

                            Container(
                                child: Text(
                                    "Log In",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),

                                ),
                            ),
                          ],
                        ),

                        ],







                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}
