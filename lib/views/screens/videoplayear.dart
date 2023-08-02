import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String videoId = ModalRoute.of(context)!.settings.arguments as String;

    YoutubePlayerController Videocontroller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            YoutubePlayer(
              controller: Videocontroller,
              showVideoProgressIndicator: true,
              aspectRatio: 16 / 9,
              progressIndicatorColor: Colors.blueAccent,
              onReady: () {
                Videocontroller.play();
              },
            ),
          ],
        ),
      ),
    );
  }
}
