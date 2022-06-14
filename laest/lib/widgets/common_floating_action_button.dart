
import 'package:flutter/material.dart';

class CommonFloatingActionButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const CommonFloatingActionButton(
      this.title,
      this.onTap, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null ) onTap();
      },
      child: Container(
          margin: EdgeInsets.all(20.0),
          height: 30.0,
          width: 320.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10.0)),
          child: Text(
            title,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          )),
    );
  }
}