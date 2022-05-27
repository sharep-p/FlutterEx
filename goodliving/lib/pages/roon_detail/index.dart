

import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String? rommId;

  const RoomDetailPage({Key? key, this.rommId}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('roomid: $rommId'),),
    );
  }
}
