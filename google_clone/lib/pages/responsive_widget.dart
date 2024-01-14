import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget web;
  const ResponsiveWidget({super.key, required this.mobile, required this.web});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainst) {
      if (constrainst.maxWidth < 768) {
        return mobile;
      }
      return web;
    });
  }
}
