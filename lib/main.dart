import 'package:flutter/material.dart';
import 'package:flutter_podacast/screens/bnb.dart';

void main() {
  runApp(const PoadcastApp());
}

class PoadcastApp extends StatelessWidget {
  const PoadcastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Podcast App",
      home: BNB(),
      debugShowCheckedModeBanner: false,
    );
  }
}
