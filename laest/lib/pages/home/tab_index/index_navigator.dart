import 'package:flutter/material.dart';
import 'package:goodliving/widgets/common_image.dart';
import './index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6.0,bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...navigatorItemList
              .map((item) => InkWell(
                    onTap: () {
                      item.onTap(context);
                    },
                    child: Column(
                      children: <Widget>[
                        CommonImage(
                          src: item.imageURL,
                          width: 47.5,
                        ),
                        Text(item.title,style: TextStyle(
                            fontSize:17.0,
                            fontWeight: FontWeight.w800),),
                      ],
                    ),
                  )),
        ],
      ),
    );
  }
}
