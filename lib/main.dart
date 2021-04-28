

import 'package:flutter/material.dart';
import 'package:flutter_animated_opacity_demo/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),


  );
}

