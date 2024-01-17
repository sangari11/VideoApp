// import 'package:flutter/material.dart';

// import 'package:video_player/video_player.dart';




// /// Stateful widget to fetch and then display video content.

// class VideoApp extends StatefulWidget {

//   VideoApp({Key? key, required  this.videourl}) : super(key: key);

//   String videourl;

//   @override

//   _VideoAppState createState() => _VideoAppState();

// }



// class _VideoAppState extends State<VideoApp> {

//   late VideoPlayerController _controller;



//   @override

//   void initState() {

//     super.initState();

//     _controller = VideoPlayerController.network(

//         widget.videourl)

//       ..initialize().then((_) {

//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.

//         setState(() {
          
//         });

//       });

//   }



//   @override

//   Widget build(BuildContext context) {

//     return Scaffold(
//         appBar: AppBar(backgroundColor: Colors.black,iconTheme: IconThemeData(
//         color: Colors.white),),
//         backgroundColor: Colors.black,
//         body: Center(

//           child: _controller.value.isInitialized

//               ? InkWell(
//                 onTap: () {
//                    setState(() {

//               _controller.value.isPlaying

//                   ? _controller.pause()

//                   : _controller.play();

//             });
//                 },
//                 child: AspectRatio(
              
//                     aspectRatio: _controller.value.aspectRatio,
              
//                     child: VideoPlayer(_controller),
              
//                   ),
//               )

//               : Container(),

//         ),
//     );

//   }



//   @override

//   void dispose() {

//     super.dispose();

//     _controller.dispose();

//   }

// }