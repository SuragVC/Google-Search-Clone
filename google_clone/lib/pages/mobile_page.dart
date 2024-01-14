import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/pages/widgets/app/mobile_footer_widget.dart';
import 'package:google_clone/pages/widgets/search_widget.dart';
import 'package:google_clone/pages/widgets/transilation_widget.dart';

class ResponsiveMobileWidget extends StatelessWidget {
  const ResponsiveMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: _appBar(size),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Gap(size.height * 0.02),
            const Column(
              children: [
                Column(
                  children: [
                    Search(),
                    Gap(15),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TranslationButtons(),
                    ),
                  ],
                ),
              ],
            ),
            const MobileFooter()
          ],
        ),
      ),
    );
  }

  AppBar _appBar(Size size) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      backgroundColor: backgroundColor,
      elevation: 0,
      title: SizedBox(
        width: size.width * 0.34,
        child: const DefaultTabController(
          length: 2,
          child: TabBar(
            labelColor: blueColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: blueColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'ALL'),
              Tab(text: 'IMAGES'),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
            icon: SvgPicture.asset('assets/images/more-apps.svg',
                color: primaryColor),
            onPressed: () {}),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
            right: 10,
          ),
          child: MaterialButton(
            onPressed: () {},
            color: const Color(0xff1A73EB),
            child: const Text(
              'Sign in',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
