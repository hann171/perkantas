import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../theme.dart';

class VideoBox extends StatefulWidget {
  final String url;
  const VideoBox(this.url, {super.key});

  @override
  State<VideoBox> createState() => _VideoBoxState();
}

class _VideoBoxState extends State<VideoBox> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url)!,
      flags: const YoutubePlayerFlags(mute: false, loop: false, autoPlay: true),
    );
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        onEnterFullScreen: youtubeHierarchy,
        player: YoutubePlayer(controller: controller),
        builder: (context, player) {
          return Scaffold(
            body: ListView(children: [
              player,
              SizedBox(
                height: mMargin,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.load(YoutubePlayer.convertUrlToId(widget.url)!);
                  },
                  child: Text(
                    'Next',
                    style: captionRegular,
                  ))
            ]),
          );
        });
  }

  youtubeHierarchy() {
    return Align(
      alignment: Alignment.center,
      child: FittedBox(
        fit: BoxFit.fill,
        child: YoutubePlayer(
          controller: controller,
        ),
      ),
    );
  }
}
