


import 'package:flutter/cupertino.dart';

class FunctionButtonItem{
  final String imageURL;
  final String title;
  final Function? onTapHandle;

  FunctionButtonItem(this.imageURL, this.title, this.onTapHandle);
}

final List<FunctionButtonItem> list =[
  FunctionButtonItem('static/images/my_index_list.png', '看房记录', null),
  FunctionButtonItem('static/images/my_index_task.png', '我的订单', null),
  FunctionButtonItem('static/images/my_index_love.png', '我的收藏', null),
  FunctionButtonItem('static/images/my_index_whoyouare.png', '身份认证', null),
  FunctionButtonItem('static/images/my_index_forus.png', '联系我们', null),
  FunctionButtonItem('static/images/my_index_merchaing.png', '电子合同', null),
  FunctionButtonItem('static/images/my_index_control.png', '房屋管理', (context){
    bool isLogin = true; //todo
if(isLogin){
  Navigator.pushNamed(context, 'roomManage');
  return;
}
}),
  FunctionButtonItem('static/images/my_index_momey.png', '钱包', null),
];