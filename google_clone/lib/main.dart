import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/pages/mobile_page.dart';
import 'package:google_clone/pages/responsive_widget.dart';
import 'package:google_clone/pages/web_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveWidget(
        mobile: ResponsiveMobileWidget(),
        web: ResponsiveWebWidget(),
      ),
      // home: SearchPage(
      //   searchQuery: '',
      // ),
    );
  }
}
