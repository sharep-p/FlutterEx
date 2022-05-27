

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodliving/widgets/common_floating_action_button.dart';
import 'package:goodliving/widgets/common_form_item.dart';
import 'package:goodliving/widgets/common_image_picker.dart';
import 'package:goodliving/widgets/common_radio_form_item.dart';
import 'package:goodliving/widgets/common_select_form_item.dart';
import 'package:goodliving/widgets/common_title.dart';

class RoomAddPage extends StatefulWidget {
  @override
  _RoomAddPageState createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {

  int renrType = 0;
  int decorationType = 0;
  int roomType = 0;
  int floor = 0;
  int oriented = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('房源发布'),
      ),
      body: ListView(
        children: [
          CommonTitle(title: '房源信息'),
          CommonFormItem(
            label: '小区',
            contenBuilder: (context) {
              return Container(
                  child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.of(context).pushNamed('search');
                      },
                      child: Container(
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '请选择小区',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      )));
            },
          ),
          CommonFormItem(
            label: '租金',
            hintText: '请输入租金',
            suffixText: '元/月',
            controller: TextEditingController(),
          ),
          CommonFormItem(
            label: '大小',
            hintText: '请输入房屋大小',
            suffixText: '平方米',
            controller: TextEditingController(),
          ),
          CommonRadioFormItem(
            label: '租赁方式',
            options: ['合租', '整租'],
            value: renrType,
            onChange: (index) {
              setState(() {
                renrType = index!;
              });
            },
          ),
          CommonSelectFormIte(
            label: '户型',
            value: roomType,
            onChange: (val){
              setState(() {
                roomType = val;
              });
            },
            options: ['一室','二室','三室','四室',],
          ),
          CommonSelectFormIte(
            label: '楼层',
            value: floor,
            onChange: (val){
              setState(() {
                floor = val;
              });
            },
            options: ['高楼层','中楼层','低楼层',],
          ),
          CommonSelectFormIte(
            label: '朝向',
            value: oriented,
            onChange: (val){
              setState(() {
                oriented = val;
              });
            },
            options: ['东','南','西','北',],
          ),
          CommonRadioFormItem(
            label: '装修',
            options: ['精装', '简装'],
            value: decorationType,
            onChange: (index) {
              setState(() {
                decorationType =index!;
              });
            },
          ),
          CommonTitle(title: '房屋图像'),
          CommonImagePicker(onChange:(List<File> files){},),
          CommonTitle(title: '房屋标题'),
          CommonTitle(title: '房屋配置'),
          CommonTitle(title: '房屋描述'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton('提交', () {}),
    );
  }
}
