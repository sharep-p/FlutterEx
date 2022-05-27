
import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/tab_index/index.dart';
import 'package:goodliving/pages/home/tab_profile/index.dart';
import 'package:goodliving/pages/home/tab_search/index.dart';
import 'package:goodliving/tab_info/index.dart';

// 1准备4个tab内容区（tabView）
List<Widget> tabViewList = [
  TabIndex(),
  TabSearch(),
  TabInfo(),
  TabProfile(),
];
// 2准备4个BottomNavigationBarItem
List<BottomNavigationBarItem> barItemList=[
  BottomNavigationBarItem(label:'首页',icon: Icon(Icons.home)),
  BottomNavigationBarItem(label:'搜索',icon: Icon(Icons.search)),
  BottomNavigationBarItem(label:'资讯',icon: Icon(Icons.info)),
  BottomNavigationBarItem(label:'我的',icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
