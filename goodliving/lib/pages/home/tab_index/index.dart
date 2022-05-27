
import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/info/index.dart';
import 'package:goodliving/pages/home/tab_index/index_navigator.dart';
import 'package:goodliving/pages/home/tab_index/index_recommond.dart';
import 'package:goodliving/widgets/common_swipper.dart';
import 'package:goodliving/widgets/search_bar/index.dart';

class TabIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SearchBar(
        shouLoaction: true,
        showMap: true,
        onSearch: (){
          Navigator.of(context).pushNamed('search');
        },
      ),backgroundColor: Colors.white,),
//      backgroundColor: Colors.white,
      body: ListView(
        children: [
          CommonSwiper(),
          IndexNavigator(),
          IndexRecommond(),
          Info(showTitle: true,),
        ],
      ),
    );
  }
}
