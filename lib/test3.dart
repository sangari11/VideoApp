import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Vidd extends StatefulWidget {
  Vidd({super.key, required this.videoId});
  late String videoId;
  @override
  State<Vidd> createState() => _ViddState();
}

class _ViddState extends State<Vidd> {

  late YoutubePlayerController _controller;
  
  
  
@override
void initState(){
    _controller = YoutubePlayerController(
        initialVideoId: widget.videoId,
        flags: YoutubePlayerFlags(
            mute: false,
            autoPlay: true,
        ),
    );
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    return 
    YoutubePlayer(
       controller: _controller,
       showVideoProgressIndicator: true,
       progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
          
       ),
       
       onReady: () {
        
       },
       
    );

    

  }
}