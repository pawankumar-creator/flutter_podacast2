import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.00),
        height: 50,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.00),
          color: Colors.grey.shade200,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "search for podcast",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.pink,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
