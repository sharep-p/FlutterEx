
import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/info/data.dart';
import 'package:goodliving/widgets/common_image.dart';

var textStyle = TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500);
class ItemWidget extends StatelessWidget {
  final InfoItem data;

  const ItemWidget(this.data,{Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
      child: Row(
        children: [
          CommonImage(src: data.imageURL,width: 120.0,height: 90.0,),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(child: (Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data.title,style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(data.source,style: textStyle,),
                Text(data.time,style: textStyle,)
              ],)
            ],
          )))
        ],
      ),
    );
  }
}
