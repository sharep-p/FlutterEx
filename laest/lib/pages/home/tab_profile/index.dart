import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/info/index.dart';
import 'package:goodliving/pages/home/tab_profile/advertisement.dart';
import 'package:goodliving/pages/home/tab_profile/function_button.dart';
import 'package:goodliving/pages/home/tab_profile/header.dart';

class TabProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('我的'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('setting');
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: ListView(
        children: [
          Header(),
          FunctionButton(),
          Advertisement(),
          Info(showTitle: true,),

        ],
      ),
    );
  }
}
