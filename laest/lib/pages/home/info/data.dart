
class InfoItem{
  final String title;
  final String imageURL;
  final String source;
  final String time;
  final String navigateURL;

  const InfoItem(this.title, this.imageURL, this.source, this.time, this.navigateURL);
}

const List<InfoItem> infoData = [
  const InfoItem(
    '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
    'https://img95.699pic.com/photo/50149/6896.jpg_wh860.jpg',
    '阿巴阿巴',
    '两天前',
    'login',
  ),
  const InfoItem(
    '置业选择 | 大理王宫 苍山觅海的古雅别院',
    'https://tse1-mm.cn.bing.net/th/id/R-C.75b039922cf8bdcb6318cb1799862b39?rik=tiCLWq8h3s5j%2fw&riu=http%3a%2f%2fimg.pconline.com.cn%2fimages%2fupload%2fupc%2ftx%2fphotoblog%2f1010%2f18%2fc11%2f5554384_5554384_1287400836551.jpg&ehk=a0STWPie1JqNNgBnZMdEWO4eNkSSDUvnK8iSwq3yN28%3d&risl=&pid=ImgRaw&r=0',
    '无锡米西',
    '两月前',
    'login',
  ),
  const InfoItem(
    '置业选择 | 鱼米水乡 三室一厅 河间的古雅别院',
    'https://tse1-mm.cn.bing.net/th/id/R-C.3bb27d75585de78a49ad09763ced29a7?rik=pNtH1hqZADvKQA&riu=http%3a%2f%2fimgs.focus.cn%2fupload%2fcd%2f38343%2fb_383422836.jpg&ehk=IrGjF6Q3SZp8CgLacdnqeFanrlnWWeq836b0OgUcQ2w%3d&risl=&pid=ImgRaw&r=0',
    'JOJO',
    '两年前',
    'login',
  ),
];