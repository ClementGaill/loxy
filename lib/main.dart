import 'package:flutter/material.dart';
import 'Widgets/FrontEnd/delayed_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loxy',
      home: Scaffold(
        body: Center(
          child: DelayedAnimation(delay: 1000, child: FlutterLogo(size: 200,)),
        ),
      ),
    );
  }
}