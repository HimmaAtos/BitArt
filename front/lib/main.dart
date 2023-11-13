// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:front/login_page.dart';
import 'package:front/my_flutter_app_icons.dart';

//import 'package:hexcolor/hexcolor.dart';


// code du home page  de bit'Art
void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    //home: BitArtHome(),
    //home: BitArtCreateAccount(),
  ));
}


class BitArtHome extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(

          flex: 3,
         child :  Center(
        //child: Image.asset("images/bitArt-logo.png"),

        /*child: CircleAvatar(
          backgroundImage: AssetImage("images/logo.png") ,
          radius: 80,
        ),*/
           child: Image(
             image: AssetImage("images/logo.png"),
           ),
         )
        ),

        Expanded(
          flex : 4,

            child: Container(
              //color: const Color(0Xffffff),
              decoration: BoxDecoration(
                //border: Border.all( width: 1),
                /*border: Border(
                  top: BorderSide(width: 1)

                ),*/
                //borderRadius: BorderRadius.circular(40),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40)  , topRight:Radius.circular(40) ),
                //color: Colors.yellow[400],
                color: Color(0xDB2C736C)

              ),
              //color: const Color(0x2C736C),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\"In art, all repetition is nil\"",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,

                        ) ,
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Josué Ortago y Gasset",
                          style: TextStyle(
                            fontSize: 20,

                          ) ,
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: (){},
                                child: Text("    Register     ", style: TextStyle(color: Color(0xDB2C736C), fontSize: 20),),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side : BorderSide(color: Colors.black),


                                  )
                                ),
                                backgroundColor:  MaterialStatePropertyAll<Color>(Colors.white),

                                //textStyle: TextStyle(color: Colors.green)
                              ),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: (){},
                              child: Text("       Login       ", style: TextStyle(color: Colors.white, fontSize: 20),),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side : BorderSide(color: Colors.black),


                                    )
                                ),
                                backgroundColor:  MaterialStatePropertyAll<Color>(Color(0xDB2C736C)),

                                //textStyle: TextStyle(color: Colors.green)
                              ),
                            )
                          ],
                        ),

                        //Padding(padding: EdgeInsets.fromLTRB(l, top, right, 0))
                        Container(
                          margin: EdgeInsets.fromLTRB(50, 50, 50, 10),
                          child: Text("V1.0.0" , style: TextStyle(fontSize: 18, color: Colors.white),

                            )
                          ,)
                      ],
                  ),

        ),

        )

      ],
    ),
  );
  }
}

class BitArtCreateAccount extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xDB2C736C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                ),
                color: Colors.white
              ),
              child : Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex : 4,
                        child: Container(
                          //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                          padding: EdgeInsets.only(top: 30, left: 30),
                          child:  SizedBox(
                              width: 300,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'First name',
                                ),
                              ),
                            ) ,

                        ),
                      ),
                      Expanded(
                        
                        flex : 1,
                        child : Container(

                          //width: 10,
                          padding: EdgeInsets.only(top: 8, right: 2),
                          margin: EdgeInsets.only(right: 17),
                          child: Icon(Icons.account_circle, size: 52, color: Colors.white,),
                          decoration: BoxDecoration(
                            //border : Border.all(width : 1, color : Colors.black),
                              color : Color(0xDB2C736C),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                          ),

                        )
                      )
                    ],
                  )
                ],
              )
            ),
          )
        ],

      ),
    );
  }
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xDB2C736C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          child: Icon(Icons.email, size: 52, color: Colors.white),
                          decoration: BoxDecoration(
                            color: Color(0xDB2C736C),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
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
                          padding: EdgeInsets.only(top: 10, right: 2),
                          margin: EdgeInsets.only(right: 17),
                          child: Icon(Icons.lock, size: 52, color: Colors.white),
                          decoration: BoxDecoration(
                            color: Color(0xDB2C736C),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
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
                        // Add your login logic here
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
                    margin: EdgeInsets.symmetric(horizontal: 20),
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
