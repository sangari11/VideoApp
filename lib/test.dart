import 'package:flutter/material.dart';
import 'package:vidapp/test2.dart';
import 'package:vidapp/test3.dart';
import 'package:vidapp/test4.dart';

import 'View/Widgets/screenwidgets.dart';

class VideoAppAK extends StatefulWidget {
  const VideoAppAK({super.key});

  @override
  State<VideoAppAK> createState() => _VideoAppAKState();
}

class _VideoAppAKState extends State<VideoAppAK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            VideoPreview(
              videoId: 'BYVZh5kqaFg',
              videoTitle: "Egg drop from space",
              videoThumb:
                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
              channelImage:
                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Short Clips",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(children: [
                        ShortClips(
                            text: "Tech",
                            imgurl:
                                'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                            vidurl: 'Xm3ZmZSm_Fg'),
                        ShortClips(
                            text: "Earth info",
                            imgurl:
                                'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                            vidurl: 'YJ_9VQ8ziE4'),
                        ShortClips(
                            text: 'Tech',
                            imgurl:
                                'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                            vidurl: 'tbx222TpTy0'),
                        ShortClips(
                            text: "Art",
                            imgurl:
                                'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                            vidurl: 'i5Xy3iHGAQk'),
                        ShortClips(
                            text: "Adventure",
                            imgurl:
                                'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                            vidurl: '2aHnQbDkq2g')
                      ]),
                    ),
                  )
                ],
              ),
            ),
            VideoWithThumb(
                text: '3D without glasses, Cross-Eye HD',
                imgurl:
                    'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                vidurl: 'zBa-bCxsZDk',
                channelImage:
                    'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg'),
            VideoPreview(
              videoId: 'nZ7m5UDvfps',
              videoTitle: 'Cube trick',
              videoThumb:
                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
              channelImage:
                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Long Videos",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          LongVideos(
                              text: "How to type",
                              imgurl:
                                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                              vidurl: 'vXsutlz0GIQ'),
                          LongVideos(
                              text: "Building Discipline",
                              imgurl:
                                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                              vidurl: '4i6dzolO4dI'),
                          LongVideos(
                              text: "Flying a Drone",
                              imgurl:
                                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                              vidurl: 't7vUXDNsLoM'),
                          LongVideos(
                              text: "How to Roller Skate",
                              imgurl:
                                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                              vidurl: 'yPIxa7VmpZo'),
                          LongVideos(
                              text: "Rock Climbing",
                              imgurl:
                                  'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                              vidurl: '30y8Uy0B_uk')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            VideoWithThumb(
                text: 'Climate Change - A Short Film',
                imgurl:
                    'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
                vidurl: 'jAa58N4Jlos',
                channelImage:
                    'https://www.thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg'),
          ],
        ),
      ),
    );
  }
}
