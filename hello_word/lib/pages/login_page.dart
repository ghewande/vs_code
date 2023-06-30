
import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart ';
import 'package:flutter/rendering.dart';
import 'package:hello_word/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        child:
           SingleChildScrollView(
         child:
                   Column(
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
          "Welcome  $name",
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
                  onChanged: (value){
                    name = value;
                    setState(() {
                      
                    });
                  } ,
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
    ) 
    ));
  }
}
