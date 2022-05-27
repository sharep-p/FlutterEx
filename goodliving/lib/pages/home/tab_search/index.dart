
import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/tab_search/dataList.dart';
import 'package:goodliving/widgets/room_list_item_widget.dart';
import 'package:goodliving/widgets/search_bar/index.dart';


class TabSearch extends StatefulWidget {
  @override
  _TabSearchState createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
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
      body: Column(
        children: [

          Expanded(child: ListView(
            children: [
              ...dataList.map((item) => RoomListItemWidget(data: item,)),
              ],
          ))
        ],
      ),
    );
  }
}

