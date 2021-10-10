import 'package:flutter/material.dart';

class ResponsiveUI extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget pc;

  const ResponsiveUI(
      {Key ?key,
      required this.mobile,
      required this.tablet,
      required this.pc})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isPC(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints cons) {
      if (cons.maxWidth < 600) {
        return mobile;
      }
      if (cons.maxWidth < 1200) {
        return tablet;
      } else {
        return pc;
      }
    });
  }
}
