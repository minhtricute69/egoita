import 'package:flutter/material.dart';
import 'package:egoita/utility/responsive.dart';

class TitleBar extends  StatelessWidget{
  TitleBar({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveUI(
      mobile: AppBar(), 
      tablet: AppBar(), 
      pc: AppBar()
    );
  }
}
