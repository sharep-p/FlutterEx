

import 'package:flutter/material.dart';
import 'package:goodliving/widgets/common_image.dart';

class Advertisement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0,bottom: 20.0,left: 10.0,right: 10.0),
      child: CommonImage(src: "https://tse3-mm.cn.bing.net/th/id/OIP-C.pCnVnxbuePW00Modas60sgHaEK?pid=ImgDet&rs=1",),
    );
  }
}
