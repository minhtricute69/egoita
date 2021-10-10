import 'package:egoita/utility/titlebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:egoita/utility/responsive.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: TitleBar(),
    );
  }
}
