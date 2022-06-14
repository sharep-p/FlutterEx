
//图片大小不知道 视频说的750*424px
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:goodliving/widgets/common_image.dart';

const List<String> defaultImage = [
  'https://img.zcool.cn/community/018dd5599190830000002129906568.jpg@1280w_1l_2o_100sh.jpg',
  'https://img.zcool.cn/community/012d6759884f81a801215603036454.jpg@1280w_1l_2o_100sh.jpg',
  'https://img.zcool.cn/community/011284598d494d00000021294a5a92.jpg@1280w_1l_2o_100sh.jpg'
];

var imageWidth = 750.0;
var imageHeight = 424.0;

class CommonSwiper extends StatelessWidget {
  final List<String>? images;

  const CommonSwiper({Key? key, this.images=defaultImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width/imageWidth*imageHeight;
    return Container(
      height: height,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return CommonImage(
            src:images![index],
            fit: BoxFit.fill,);
        },
        itemCount: images!.length,
        pagination: new SwiperPagination(),
//        control: new SwiperControl(),
      ),
    );
  }
}


