
import 'package:flutter/material.dart';
import 'package:goodliving/utils/common_toast.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: ListView(children: [
        RaisedButton(onPressed: (){
          CommonToast.showToast('已退出登录');
        },
        child: Text('退出登录',style: TextStyle(color: Colors.red),),),
    ],
    )
    );
  }
}
