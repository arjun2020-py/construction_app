import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReviewAScreen extends StatelessWidget {
  ReviewAScreen({super.key});
  final FlickManager flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.asset('assets/images/web_player.mp4'));
          
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appBarBgColor,
          centerTitle: true,
          title: CustomTextWidget(text: 'Review',color: appBarTextColor,),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
            );
          },
        ));
  }
}
