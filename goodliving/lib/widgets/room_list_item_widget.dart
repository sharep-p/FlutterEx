
import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/tab_search/dataList.dart';
import 'package:goodliving/widgets/common_image.dart';
import 'package:goodliving/widgets/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;

  const RoomListItemWidget({Key? key, required this.data,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CommonImage(src: data.imageURL,width: 132.5,height: 100.0,),
          Padding(padding: EdgeInsets.only(left: 30.0)),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.title,maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600),),
              Text(data.subTitle,maxLines: 1,overflow: TextOverflow.ellipsis,),
              Wrap(children: [...data.tags.map((item) => CommonTag(item))],),
              Text('${data.price} 元/月',style: TextStyle(fontSize: 16.0,color: Colors.orangeAccent),)
            ],
          ))
        ],
      ),
    );
  }
}
