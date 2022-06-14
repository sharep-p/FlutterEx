import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var loginRegisterStyle = TextStyle(fontSize: 20.0,color: Colors.white);

class Header extends StatelessWidget {

  Widget _notLoginBuilder(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      height: 95.0,
      child: Row(
        children: [
          Container(
            height: 65.0,
            width: 65.0,
            padding: EdgeInsets.only(top: 5.0, left: 10.0, bottom: 10.0),
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://tse1-mm.cn.bing.net/th/id/R-C.dda388ff0021b84efe272b7bf984a6e9?rik=wSzOcqcO2nMl4g&riu=http%3a%2f%2fbpic.588ku.com%2felement_pic%2f01%2f39%2f44%2f65573cbf06762ec.jpg&ehk=Gwz8O8JmkfUyWN9YOHVQQzpUOG68ljDAWS5jmQ4yNJA%3d&risl=&pid=ImgRaw&r=0"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 16.0)),
              Row(

                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text('登录', style: loginRegisterStyle,),
                  ),
                  Text('/', style: loginRegisterStyle,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
  },
                    child: Text('注册', style: loginRegisterStyle,),
                  ),
                ],
              ),
              Text('登录后可以体验更多', style: TextStyle(color: Colors.white),),
            ],
          )
        ],
      ),
    );
  }

  Widget _LoginBuilder(BuildContext context) {
    String userName = '已登录用户名';
    String userImage = "https://x0.ifengimg.com/res/2021/63E9648BA34B4833163683D374123842B9990549_size20_w640_h622.jpeg";
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      height: 95.0,
      child: Row(
        children: [
          Container(
            height: 65.0,
            width: 65.0,
            padding: EdgeInsets.only(top: 5.0, left: 10.0, bottom: 10.0),
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  userImage),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 16.0)),
              Text(userName,style: loginRegisterStyle,),

              Text('查看编辑个人资料', style: TextStyle(color: Colors.white),),
            ],
          )
        ],
      ),
    );

  }

    @override
    Widget build(BuildContext context) {
    var isLoogin = false;
     return isLoogin ? _LoginBuilder(context): _notLoginBuilder(context);
    }
}
