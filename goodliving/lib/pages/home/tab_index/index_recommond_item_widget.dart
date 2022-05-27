
import 'package:flutter/material.dart';
import 'package:goodliving/pages/home/tab_index/index_recommond_data.dart';
import 'package:goodliving/widgets/common_image.dart';

var textStyle = TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500);
class IndexRecommondItemWidget extends StatelessWidget {
  final IndexRecommendItem data;

  const IndexRecommondItemWidget({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(data.navigateURL);
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white),

        width: (MediaQuery.of(context).size.width-10.0*3)/2,
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(data.title,style: textStyle,),
                Text(data.subTitle,style: textStyle,),
              ],
            ),
            CommonImage(src: data.imageURL,width: 55.0,),
          ],
        ),
      ),
    );
  }
}
