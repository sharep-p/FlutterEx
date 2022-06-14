
import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/info/index.dart';
import 'package:goodliving/widgets/search_bar/index.dart';

class TabInfo extends StatefulWidget {
  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SearchBar(
        onSearch: (){
          Navigator.of(context).pushNamed('search');

        },
      ),backgroundColor: Colors.white,),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Info(),
          Info(),
          Info(),
        ],
      ),
    );
  }
}

