import 'package:flutter/material.dart';
import 'package:flutter_podacast/screens/home_page.dart';

void main() {
  runApp(const PoadcastApp());
}

class PoadcastApp extends StatelessWidget {
  const PoadcastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Podcast App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
