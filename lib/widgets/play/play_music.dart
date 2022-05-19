import 'package:flutter/material.dart';

class PlayMusic extends StatefulWidget {
  const PlayMusic({Key? key}) : super(key: key);

  @override
  State<PlayMusic> createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  double _currentPosition = 0.0;
  int _selectedIndex = 1;
  final List<IconData> _iconList = [
    Icons.skip_previous,
    Icons.play_arrow,
    Icons.skip_next,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _currentPosition,
          onChanged: (double position) {
            setState(() {
              _currentPosition = position;
            });
          },
          min: 0.0,
          max: 100.0,
          activeColor: Colors.pink,
          inactiveColor: Colors.grey,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _iconList
                .asMap()
                .entries
                .map((MapEntry) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = MapEntry.key;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 11),
                        decoration: BoxDecoration(
                            color: _selectedIndex == MapEntry.key
                                ? Colors.pink
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Icon(MapEntry.value,
                            size: 40,
                            color: _selectedIndex == MapEntry.key
                                ? Colors.white
                                : Colors.black),
                      ),
                    ))
                .toList())
      ],
    );
  }
}
