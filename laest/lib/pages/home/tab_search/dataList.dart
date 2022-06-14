
class RoomListItemData{
  final String id;
  final String title;
  final String subTitle;
  final String imageURL;
  final List<String> tags;
  final int? price;

  const RoomListItemData({required this.imageURL,required this.id,required this.subTitle, required this.tags,this.price,required this.title,});
}

const List<RoomListItemData> dataList =[
  const RoomListItemData(
    title: '朝阳路大姐 2室1厅 8888元',
    subTitle: '一室/110/西/CBD总部公寓二期,沙沙沙沙沙沙沙沙沙沙沙沙沙',
    imageURL: "https://tse3-mm.cn.bing.net/th/id/OIP-C.ABCoIXMGMepCNbv_R5t7ggHaJ4?pid=ImgDet&rs=1",
    id: '11',
    tags: (['近地铁','随时看房']),
    price: 8888,
  ),

  const RoomListItemData(
    title: '长安路9号 5室2厅 0元',
    subTitle: '五室/1100/西/农商行总部二期',
    imageURL: "https://img.tukuppt.com/png_preview/00/03/89/9Sd7mGIftm.jpg!/fw/780",
    id: '23',
    tags: (['近地铁','不许看房']),
    price: 0,
  ),

  const RoomListItemData(
    title: '照样湖 3室1厅 9999元',
    subTitle: '二室/110/西/长久二期',
    imageURL: "https://img.zcool.cn/community/01c85557732feb0000018c1b4585a8.jpg@1280w_1l_2o_100sh.jpg",
    id: '34',
    tags: (['离湖近','随时看房']),
    price: 9999,
  ),

  const RoomListItemData(
    title: '一二三四五 2室1厅 12345元',
    subTitle: '一室/123/西/456789',
    imageURL: "https://tse1-mm.cn.bing.net/th/id/R-C.368d414786c3fd40a847bfb600739afc?rik=va1mcxVgYAgYOg&riu=http%3a%2f%2fimgwcs3.soufunimg.com%2fnews%2f2019_12%2f17%2fe7d204fb-e80b-4077-8e95-d4466228c830.jpg&ehk=tEX0JcN0gIHYjSbMMrWDxO%2f%2fv0mJSrL%2fKhYe692mhs4%3d&risl=&pid=ImgRaw&r=0",
    id: '455',
    tags: (['近地铁','随时看房','不许看房']),
    price: 12345,
  ),
];
