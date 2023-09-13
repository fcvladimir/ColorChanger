import 'dart:math' as math;

import 'package:color_changer/constants/app_color.dart';
import 'package:color_changer/constants/app_string.dart';
import 'package:flutter/material.dart';

/// the first screen named 'HomePage'
class HomePage extends StatefulWidget {
  /// widget constructor
  const HomePage({super.key});

  /// This widget is the home page of your application. It is stateful, meaning
  /// that it has a State object (defined below) that contains fields that
  /// affect how it looks.

  /// This class is the configuration for the state. It holds the values (in
  /// this case the title) provided by the parent (in this case the App widget)
  /// and used by the build method of the State. Fields in a Widget subclass are
  /// always marked "final".

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = AppColor.whiteColor;

  void changeBackground() {
    setState(() {
      /// This call to setState tells the Flutter framework that something has
      /// changed in this State, which causes it to rerun the build method below
      /// so that the display can reflect the updated values. If we changed
      /// bgColor without calling setState(), then the build method would not be
      /// called again, and so nothing would appear to happen.
      bgColor =
          Color((math.Random().nextDouble() * AppColor.whiteColorInt).toInt());
    });
  }

  @override
  Widget build(BuildContext context) {
    /// The Flutter framework has been optimized to make rerunning build methods
    /// fast, so that you can just rebuild anything that needs updating rather
    /// than having to individually change instances of widgets.
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: changeBackground,
      child: ColoredBox(
        color: bgColor,
        child: const Center(
          child: Text(
            AppString.helloThereText,
            style: TextStyle(
              color: AppColor.blackColor,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
