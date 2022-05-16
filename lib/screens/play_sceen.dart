import 'package:flutter/material.dart';
import 'package:flutter_podacast/widgets/play/play_podcast_detail.dart';

class PlayScreen extends StatelessWidget {
  final Map<String, dynamic> model;
  const PlayScreen({required this.model});

  @override
  Widget build(BuildContext context) {
    // print("HI From Play Screen ${model["name"]}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Icon(
            Icons.clear_all,
            size: 35.0,
            color: Colors.black,
          ),
          Icon(
            Icons.more_vert,
            size: 35.0,
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            PlayPodcastDetail(
              model: model,
            ),
          ],
        ),
      ),
    );
  }
}
