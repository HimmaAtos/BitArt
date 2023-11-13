import 'package:flutter/material.dart';
import 'package:front/my_flutter_app_icons.dart';

//import 'package:hexcolor/hexcolor.dart';


// code du home page  de bit'Art
void main() {
  runApp(MaterialApp(
    home: BitArtHome(),
      debugShowCheckedModeBanner: false
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
                                child: Text("  Register   ", style: TextStyle(color: Color(0xDB2C736C), fontSize: 20),),
                              style: ButtonStyle(

                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    //side : BorderSide(color: Colors.black),


                                  )
                                ),
                                backgroundColor:  MaterialStatePropertyAll<Color>(Colors.white),

                                //textStyle: TextStyle(color: Colors.green)
                              ),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: (){},
                              child: Text("     Login     ", style: TextStyle(color: Colors.white, fontSize: 20),),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      //side : BorderSide(color: Colors.black),


                                    )
                                ),
                                backgroundColor:  MaterialStatePropertyAll<Color>(Color(0xDB2C736C)),
                                padding: MaterialStateProperty.all(EdgeInsets.only(bottom: 15, top: 10))

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