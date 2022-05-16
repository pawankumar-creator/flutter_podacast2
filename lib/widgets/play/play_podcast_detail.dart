import 'package:flutter/material.dart';

class PlayPodcastDetail extends StatelessWidget {
  final Map<String, dynamic> model;
  const PlayPodcastDetail({required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            model["imageUrl"],
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          model["name"],
          style: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "${model["episodeTitle"]} | Episode ${model["episodeNo"]}",
          style: TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
