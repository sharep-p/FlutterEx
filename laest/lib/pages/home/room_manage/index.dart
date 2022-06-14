import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/tab_search/dataList.dart';
import 'package:goodliving/widgets/common_floating_action_button.dart';
import 'package:goodliving/widgets/room_list_item_widget.dart';

class RoomManagePage extends StatelessWidget {
  const RoomManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: CommonFloatingActionButton('发布房源', () {
            Navigator.of(context).pushNamed('roomAdd');
          }),
          appBar: AppBar(
            title: Text('房屋管理'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: '空置',
                ),
                Tab(
                  text: '已租',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  ...dataList.map((item) => RoomListItemWidget(data: item)),
                ],
              ),
              ListView(
                children: [
                  ...dataList.map((item) => RoomListItemWidget(data: item)),
                ],
              ),
            ],
          ),
        ));
  }
}


