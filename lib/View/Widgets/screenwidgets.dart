import 'package:flutter/material.dart';
import 'package:vidapp/test3.dart';

class ShortClips extends StatelessWidget {
   ShortClips({
    required this.text,required this.imgurl, required this.vidurl
  });
  var imgurl;
  var vidurl;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Vidd(videoId: vidurl,)),
              );
        },
        child: Container(
          height: MediaQuery.of(context).size.height*0.3,width: MediaQuery.of(context).size.width*0.35,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5), image: DecorationImage(
              image: NetworkImage(imgurl),
              fit: BoxFit.cover,
            ),),
          child: Stack(children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.more_vert, color: Colors.white,size: 20,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            )
          ],),
        ),
      ),
    );
  }
}

class VideoWithThumb extends StatelessWidget {
   VideoWithThumb({
    Key? key,required this.text,required this.imgurl, required this.vidurl,required this.channelImage
  });
  var imgurl;
  var vidurl;
  var channelImage;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Vidd(videoId: vidurl,)),
              );
              },
            child: Container(
              height: MediaQuery.of(context).size.height*0.27,width: double.infinity,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5), image: DecorationImage(
                  image: NetworkImage(imgurl),
                  fit: BoxFit.cover,
              ),),
               ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                radius: 22,
                backgroundImage:
                    NetworkImage(channelImage),
                backgroundColor: Colors.transparent,),
                SizedBox(width: 15,),
                Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
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

class LongVideos extends StatelessWidget {
  LongVideos({
  required this.text,required this.imgurl, required this.vidurl
  });
  var imgurl;
  var vidurl;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width*0.4,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Vidd(videoId: vidurl,)),
              );
              },
              child: Container(
                 height: MediaQuery.of(context).size.height*0.12,width: MediaQuery.of(context).size.width*0.4,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5), image: DecorationImage(
                image: NetworkImage(imgurl),
                fit: BoxFit.cover,
            ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(text,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(Icons.more_vert, size: 18,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
