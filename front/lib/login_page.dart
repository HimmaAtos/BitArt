// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
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