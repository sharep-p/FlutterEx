
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/index.dart';
import 'package:goodliving/pages/home/room_manage/index.dart';
import 'package:goodliving/pages/login.dart';
import 'package:goodliving/pages/not_found.dart';
import 'package:goodliving/pages/room_add/index.dart';
import 'package:goodliving/pages/roon_detail/index.dart';
import 'package:goodliving/pages/roon_detail/setting.dart';

import 'pages/register.dart';

class Routes {
  //1 定义路由名称
  static String home = '/';
  static String login = '/login';
  static String register= '/register';
  static String roomDeatil = '/room/:roomId';
  static String setting = '/setting';
  static String roomManage = '/roomManage';
  static String roomAdd = '/roomAdd';


  //2 定义路由处理函数
  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context,
          Map<String, List<String>> parameters) {
        return HomePage();
      }
  );

  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context,
          Map<String, List<String>> parameters) {
        return LoginPage();
      }
  );

  static final Handler _registerHandler = Handler(
      handlerFunc: (BuildContext? context,
          Map<String, List<String>> parameters) {
        return RegisterPage();
      }
  );

  static final Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context,
          Map<String, List<String>> parameters) {
        return NotFoundPage();
      }
  );

  static final Handler _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context,
          Map<String, List<String>> params) {
        return RoomDetailPage(rommId: params['roomId']![0],);
      }
  );

  static final Handler _settingDetailHandler = Handler(
      handlerFunc: (BuildContext? context,
          Map<String, List<String>> params) {
        return SettingPage();
      }
  );

  static final Handler _roomManageHandler = Handler(
      handlerFunc: (BuildContext? context,
          Map<String, List<String>> params) {
        return RoomManagePage();
      }
  );

  static final Handler _roomAddHandler = Handler(
      handlerFunc: (BuildContext? context,
          Map<String, List<String>> params) {
        return RoomAddPage();
      }
  );

  //3 编写函数configureRoutes 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(roomDeatil, handler: _roomDetailHandler);
    router.define(setting, handler: _settingDetailHandler);
    router.define(roomManage, handler: _roomManageHandler);
    router.define(roomAdd, handler: _roomAddHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}