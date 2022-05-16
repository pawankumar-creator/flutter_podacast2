import 'package:flutter/material.dart';

import '../../model/icons_tab_model.dart';

class IconTabs extends StatefulWidget {
  @override
  _IconTabsState createState() => _IconTabsState();
}

class _IconTabsState extends State<IconTabs> {
  IconTabModel _selectedItem =
      IconTabModel(title: "Premium", iconData: Icons.security);
  final List<IconTabModel> _list = [
    IconTabModel(
      title: "Premium",
      iconData: Icons.security,
    ),
    IconTabModel(title: "Popular", iconData: Icons.spa),
    IconTabModel(title: "Trending", iconData: Icons.poll),
    IconTabModel(title: "Recent", iconData: Icons.access_time),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _list.map((IconTabModel model) {
            return _buildItem(model);
          }).toList()),
    );
  }

  // function to create a single Item
  Widget _buildItem(IconTabModel model) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItem = model;
        });
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
              color: _selectedItem.title == model.title
                  ? Colors.black
                  : Colors.white,
              borderRadius: BorderRadius.circular(20.00),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 2.0)),
              ],
            ),
            child: Icon(
              model.iconData,
              size: 50,
              color: _selectedItem.title == model.title
                  ? Colors.white
                  : Colors.grey,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            model.title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
