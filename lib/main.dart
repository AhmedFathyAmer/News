import 'package:flutter/material.dart';
import 'package:newsfinal/views/homeview.dart';

void main() {
  runApp(const NewsFinal());
}

class NewsFinal extends StatelessWidget {
  const NewsFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),

    );
  }
}