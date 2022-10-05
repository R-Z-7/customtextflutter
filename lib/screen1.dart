// ignore_for_file: prefer_const_constructors

import 'package:customtextflutter/button.dart';
import 'package:customtextflutter/textfield.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: const AssetImage('assets/images/background.png'))),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Hello There',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Automatic identity verification which enable you to verify your identity",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  CustomTextfield.textField(
                    'Name',
                    length: 50,
                    textController: TextEditingController(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  CustomTextfield.textField(
                    'Password',
                    isPassword: true,
                    length: 50,
                    textController: TextEditingController(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    onPressed: () {},
                  )
                ],
              )
            ]),
      )),
    );
  }
}
