import 'package:flutter/material.dart';
import 'package:goodliving/widgets/page_content.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '请输入用户名',
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                suffixIcon: IconButton(
                  icon: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState((){
                      showPassword = !showPassword;
                    });
                  },
                ),
              ),
              obscureText: !showPassword,
            ),
            Padding(padding: EdgeInsets.all(10)),
            RaisedButton(
              color: Colors.green,
                child: Text('登录',style: TextStyle(color: Colors.white),),
                onPressed: () {
                  //todo
                }),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('还没有账号'),
                FlatButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'register');
                    },
                    child: Text('去注册~',style: TextStyle(color: Colors.green),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
