import 'package:flutter/material.dart';
import 'package:flutter_podacast/screens/play_sceen.dart';

import '../../data/dummy_data.dart';

class PodcastCarousel extends StatelessWidget {
  const PodcastCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Recommended",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "view all",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: DummyData.podcastList
                  .map(
                    (mapModel) => _buildPodcastItem(mapModel, context),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPodcastItem(
      Map<String, dynamic> mapModel, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => PlayScreen(
                        model: mapModel,
                      )));
            },
            child: Container(
              height: 300,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(2.0, 0.0),
                      color: Colors.black38,
                      blurRadius: 4.0,
                    )
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  mapModel["imageUrl"],
                  height: 300,
                  width: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.00,
          ),
          Text(
            mapModel["name"],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10.00,
          ),
          Text(
            mapModel["author"],
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
