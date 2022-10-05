// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color.fromARGB(228, 81, 166, 236),
      splashColor: Color.fromARGB(255, 0, 88, 202),
      // ignore: sort_child_properties_last
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.login,
              color: Colors.red,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Identify",
              maxLines: 1,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
