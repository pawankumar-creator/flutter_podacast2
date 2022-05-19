import 'package:flutter/material.dart';

class PlayIconsTab extends StatelessWidget {
  final List<IconData> _iconList = [
    Icons.favorite_border_outlined,
    Icons.mode_comment,
    Icons.file_download,
    Icons.share,
  ];
  PlayIconsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _iconList
          .map((IconData iconData) => _buildIconItem(iconData))
          .toList(),
    );
  }

  Widget _buildIconItem(IconData iconData) {
    return Icon(
      iconData,
      size: 30,
      color: Colors.black,
    );
  }
}
