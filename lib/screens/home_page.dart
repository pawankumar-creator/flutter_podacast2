import 'package:flutter/material.dart';
import 'package:flutter_podacast/widgets/home/icon_tabs.dart';

import '../widgets/home/podcast_carousel.dart';
import '../widgets/home/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: buildBody(),
    );
  }

  // function to create a body
  buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SearchBar(),
          const SizedBox(
            height: 20,
          ),
          IconTabs(),
          const SizedBox(
            height: 20,
          ),
          const PodcastCarousel(),
        ],
      ),
    );
  }

  // function to create appbar

  _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(90.00),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.00,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text("Good Morning,",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
                const Text(
                  "Pawan",
                  // ignore: unnecessary_const
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const CircleAvatar(
              radius: 35.00,
              backgroundImage: AssetImage(
                'assets/images/logo.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
