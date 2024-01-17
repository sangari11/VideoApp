import 'package:flutter/material.dart';
import 'package:vidapp/View/Widgets/screenwidgets.dart';
import 'package:vidapp/test4.dart';

class MyAppHome extends StatefulWidget {
  const MyAppHome({super.key});

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
      Column(children: [
        VideoPreview(videoId: 'BYVZh5kqaFg', videoTitle: "Egg drop from space", videoThumb: 'https://img.youtube.com/vi/BYVZh5kqaFg/maxresdefault.jpg', channelImage: 'https://yt3.ggpht.com/ytc/AMLnZu8YiuFLlGxrZkl4SHtWLLBSQAwIfu2B78dZIDdh=s48-c-k-c0x00ffffff-no-rj',),
        Container(
              color: Colors.white,padding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
              child: Column(
                children: [
                  Row(children: [
                    Text("Short Clips", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          ShortClips(text: "Tech", imgurl: 'https://img.youtube.com/vi/Xm3ZmZSm_Fg/hqdefault.jpg', vidurl: 'Xm3ZmZSm_Fg'),
                          ShortClips(text: "Earth info", imgurl: 'https://img.youtube.com/vi/YJ_9VQ8ziE4/maxresdefault.jpg', vidurl: 'YJ_9VQ8ziE4'),
                          ShortClips(text: 'Tech', imgurl: 'https://img.youtube.com/vi/tbx222TpTy0/sddefault.jpg', vidurl: 'tbx222TpTy0'),
                          ShortClips(text: "Art", imgurl: 'https://img.youtube.com/vi/i5Xy3iHGAQk/maxresdefault.jpg', vidurl: 'i5Xy3iHGAQk'),
                          ShortClips(text: "Adventure", imgurl: 'https://img.youtube.com/vi/2aHnQbDkq2g/maxresdefault.jpg', vidurl: '2aHnQbDkq2g')
                        ]
                      ),
                    ),
                  )
                  ],
              ),
            ),
      
      ],)
      ),
    );
  }
}