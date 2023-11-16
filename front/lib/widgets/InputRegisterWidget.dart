import 'package:flutter/material.dart';

Widget PrenomInput() => Row(
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
                obscureText: true,
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
              padding: const EdgeInsets.only(top: 15, right: 2, bottom: 15),
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
    );
