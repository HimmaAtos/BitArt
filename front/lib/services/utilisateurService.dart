import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:front/models/UtilisateurModel.dart';
import 'package:http/http.dart' as http;
// import 'package:localstorage/localstorage.dart';

class UtilisateurState {
  Future<bool> register(utilisateurModel) async {
    try {
      String urlRegister = 'http://10.0.2.2:8000/register';
      http.Response response = await http.post(
        Uri.parse(urlRegister),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "password": "a",
          "first_name": "a",
          "last_name": "a",
          "email": "b",
          "cni": "a",
          "addresse": "a",
          "profil": "a",
          "name": "a"
        }),
      );
      var data = json.decode(response.body) as Map;
      // print(data);
      if (data.containsKey('token')) {
        // storage.setItem('token', data['token']);

        // initParam();
        return false;
      }

      return true;
    } catch (e) {
      print("error loginnow");
      print(e);
      return true;
    }
  }
}
