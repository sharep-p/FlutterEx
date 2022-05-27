

import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('404'),),
      body: Center(child: Text('你访问的页面不存在'),),
    );
  }
}
