// import 'package:flutter/material.dart';
// import 'package:vidapp/test2.dart';
// import 'package:vidapp/test3.dart';
// import 'package:vidapp/test4.dart';

// class AppHome extends StatefulWidget {
//   const AppHome({super.key});
  
//   @override
//   State<AppHome> createState() => _AppHomeState();
// }

// class _AppHomeState extends State<AppHome> {

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             VideoPreview(videoId: 'BYVZh5kqaFg', videoTitle: "Egg drop from space", videoThumb: 'https://img.youtube.com/vi/BYVZh5kqaFg/maxresdefault.jpg', channelImage: 'https://yt3.ggpht.com/ytc/AMLnZu8YiuFLlGxrZkl4SHtWLLBSQAwIfu2B78dZIDdh=s48-c-k-c0x00ffffff-no-rj',),
//             Container(
//               color: Colors.white,padding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
//               child: Column(
//                 children: [
//                   Row(children: [
//                     Text("Short Clips", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
//                   ],),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Row(
//                         children: [
//                           ShortClips(text: "Tech", imgurl: 'https://img.youtube.com/vi/Xm3ZmZSm_Fg/hqdefault.jpg', vidurl: 'Xm3ZmZSm_Fg'),
//                           ShortClips(text: "Earth info", imgurl: 'https://img.youtube.com/vi/YJ_9VQ8ziE4/maxresdefault.jpg', vidurl: 'YJ_9VQ8ziE4'),
//                           ShortClips(text: 'Tech', imgurl: 'https://img.youtube.com/vi/tbx222TpTy0/sddefault.jpg', vidurl: 'tbx222TpTy0'),
//                           ShortClips(text: "Art", imgurl: 'https://img.youtube.com/vi/i5Xy3iHGAQk/maxresdefault.jpg', vidurl: 'i5Xy3iHGAQk'),
//                           ShortClips(text: "Adventure", imgurl: 'https://img.youtube.com/vi/2aHnQbDkq2g/maxresdefault.jpg', vidurl: '2aHnQbDkq2g')
//                         ]
//                       ),
//                     ),
//                   )
//                   ],
//               ),
//             ),
//             VideoWithThumb(text: '3D without glasses, Cross-Eye HD', imgurl: 'https://img.youtube.com/vi/zBa-bCxsZDk/maxresdefault.jpg', vidurl: 'zBa-bCxsZDk', channelImage: 'https://yt3.ggpht.com/ytc/AMLnZu9wqgiDo4SGap6-y9TkoT_Ajay0W74xLiU_IMXx=s48-c-k-c0x00ffffff-no-rj'),
//             VideoPreview( videoId: 'nZ7m5UDvfps', videoTitle: 'Cube trick', videoThumb: 'https://img.youtube.com/vi/nZ7m5UDvfps/hqdefault.jpg', channelImage: 'https://yt3.ggpht.com/dz22eeyHPr_Iv7uTg0QPVoz3EoQDTbUrMyIum3kIviKf-bJ1KpJYk4jMBDIaeK_RSBMCB2XV=s68-c-k-c0x00ffffff-no-rj',),
//             Container(
//               padding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
//               child: Column(
//                 children: [
//                   Row(children: [
//                     Text("Long Videos", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
//                   ],),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Row(
//                         children: [
//                           LongVideos(text: "How to type", imgurl: 'https://img.youtube.com/vi/vXsutlz0GIQ/maxresdefault.jpg', vidurl: 'vXsutlz0GIQ'),
//                           LongVideos(text: "Building Discipline", imgurl: 'https://img.youtube.com/vi/4i6dzolO4dI/maxresdefault.jpg', vidurl:'4i6dzolO4dI'),
//                           LongVideos(text: "Flying a Drone", imgurl: 'https://img.youtube.com/vi/t7vUXDNsLoM/maxresdefault.jpg', vidurl: 't7vUXDNsLoM'),
//                           LongVideos(text: "How to Roller Skate", imgurl: 'https://img.youtube.com/vi/yPIxa7VmpZo/maxresdefault.jpg', vidurl: 'yPIxa7VmpZo'),
//                           LongVideos(text: "Rock Climbing", imgurl: 'https://img.youtube.com/vi/30y8Uy0B_uk/maxresdefault.jpg', vidurl: '30y8Uy0B_uk')

//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             VideoWithThumb(text: 'Climate Change - A Short Film', imgurl: 'https://img.youtube.com/vi/jAa58N4Jlos/maxresdefault.jpg', vidurl: 'jAa58N4Jlos', channelImage: 'https://yt3.ggpht.com/ytc/AMLnZu-ZF7pPwd-be9S4CXiXp_1VzYHaKhuZ-H623HT8=s48-c-k-c0x00ffffff-no-rj'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class VideoWithThumb extends StatelessWidget {
//    VideoWithThumb({
//     Key? key,required this.text,required this.imgurl, required this.vidurl,required this.channelImage
//   });
//   var imgurl;
//   var vidurl;
//   var channelImage;
//   String text;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       child: Column(
//         children: [
//           InkWell(
//             onTap: () {
//                 Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Vidd(videoId: vidurl,)),
//               );
//               },
//             child: Container(
//               height: MediaQuery.of(context).size.height*0.27,width: double.infinity,
//                 decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5), image: DecorationImage(
//                   image: NetworkImage(imgurl),
//                   fit: BoxFit.cover,
//               ),),
//                ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 CircleAvatar(
//                 radius: 22,
//                 backgroundImage:
//                     NetworkImage(channelImage),
//                 backgroundColor: Colors.transparent,),
//                 SizedBox(width: 15,),
//                 Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
//                 Spacer(),
//                 Icon(Icons.more_vert,size: 20,)
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class LongVideos extends StatelessWidget {
//   LongVideos({
//   required this.text,required this.imgurl, required this.vidurl
//   });
//   var imgurl;
//   var vidurl;
//   String text;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 10),
//       child: Container(
//         width: MediaQuery.of(context).size.width*0.4,
//         child: Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Vidd(videoId: vidurl,)),
//               );
//               },
//               child: Container(
//                  height: MediaQuery.of(context).size.height*0.12,width: MediaQuery.of(context).size.width*0.4,
//                 decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5), image: DecorationImage(
//                 image: NetworkImage(imgurl),
//                 fit: BoxFit.cover,
//             ),),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 5,left: 5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(text,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
//                   Spacer(),
//                   Icon(Icons.more_vert, size: 18,)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ShortClips extends StatelessWidget {
//    ShortClips({
//     required this.text,required this.imgurl, required this.vidurl
//   });
//   var imgurl;
//   var vidurl;
//   String text;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 10),
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Vidd(videoId: vidurl,)),
//               );
//         },
//         child: Container(
//           height: MediaQuery.of(context).size.height*0.3,width: MediaQuery.of(context).size.width*0.35,
//           decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5), image: DecorationImage(
//               image: NetworkImage(imgurl),
//               fit: BoxFit.cover,
//             ),),
//           child: Stack(children: [
//             Align(
//               alignment: Alignment.topRight,
//               child: Icon(Icons.more_vert, color: Colors.white,size: 20,),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(text, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//               ),
//             )
//           ],),
//         ),
//       ),
//     );
//   }
// }
