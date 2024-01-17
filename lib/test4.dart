import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPreview extends StatefulWidget {
   VideoPreview({super.key,required this.videoId, required this.videoTitle, required this.videoThumb, required this.channelImage});
  late String videoId;
  late String videoTitle;
  // ignore: prefer_typing_uninitialized_variables
  late var videoThumb;
  late var channelImage;
  @override
  State<VideoPreview> createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreview> {

   late YoutubePlayerController _controller;
  
  
  // 'nZ7m5UDvfps'
  
@override
void initState(){
    _controller = YoutubePlayerController(
        initialVideoId: widget.videoId,
        flags: YoutubePlayerFlags(
            mute: false,
            autoPlay: false,
            loop: true,
            isLive: true
        ),
    );
    super.initState();
}



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.27,width: double.infinity,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
            child: 
            YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressColors: ProgressBarColors(
                      playedColor: Colors.green,
                      handleColor: Colors.green,
                      
                  ),
                  
                  onReady: () {
                    
                  },
                  
                )
            ,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                radius: 22,
                backgroundImage:
                    NetworkImage(widget.channelImage),
                backgroundColor: Colors.transparent,
                ),
                SizedBox(width: 15,),
                Text(widget.videoTitle, style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Icons.more_vert,size: 20,)
              ],
            ),
          )
        ],
      ),
    );
  }
}