
import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  final String? title;

  const CommonTitle({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
        padding: EdgeInsets.only(left: 10.0),
        alignment: Alignment.centerLeft,
      child: Text(title ?? '',style: TextStyle(fontWeight:FontWeight.w600,fontSize: 25.0,color: Colors.black),),
    );
  }
}
