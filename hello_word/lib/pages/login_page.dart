
import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart ';
import 'package:flutter/rendering.dart';
import 'package:hello_word/utils/Routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/mobile-login.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
          //child: Text(Kiran),
        ),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0,
          //child: Text(Kiran),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0,horizontal:32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "User Name",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                   SizedBox(
                  height: 40.0,
                  //child: Text(Kiran),
                 ), 
                  
              ElevatedButton(child: Text("Login"),
              style: TextButton.styleFrom(minimumSize:Size(150, 40) ),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
               // print("Hi Kiran");

              },)
              ],
            )),
      ],
    ));
  }
}
