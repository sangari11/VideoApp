import 'package:flutter/material.dart';
import '../../test.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List screen = [VideoAppAK()];
  var sr=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),title: Text("Good Afternoon",style: TextStyle(color: Colors.black,fontSize: 18)),toolbarHeight: 70,elevation: 0,backgroundColor: Colors.white,
        actions: [Icon(Icons.notifications),SizedBox(width: 15,),Icon(Icons.settings),SizedBox(width: 15,)],),
      body: screen[sr],
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  sr=0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                      Icon(Icons.search,
                        color: Colors.white,size: 25,),
                    Text("Explore", style: TextStyle(color: Colors.white,fontSize: 10),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  sr=0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Icon(Icons.videocam_rounded,
                      color: Colors.white,size: 25,),
                    Text("Video", style: TextStyle(color: Colors.white,fontSize: 10),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  sr=0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Icon(Icons.person,
                      color: Colors.white,size: 25,),
                    Text("Profile", style: TextStyle(color: Colors.white,fontSize: 10),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

