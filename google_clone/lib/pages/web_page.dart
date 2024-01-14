import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/pages/widgets/search_buttons.dart';
import 'package:google_clone/pages/widgets/search_widget.dart';
import 'package:google_clone/pages/widgets/transilation_widget.dart';
import 'package:google_clone/pages/widgets/web/web_footer_widget.dart';

class ResponsiveWebWidget extends StatelessWidget {
  const ResponsiveWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: _appBar(),
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
                    SearchButtons(),
                    Gap(10),
                    TranslationButtons()
                  ],
                ),
              ],
            ),
            const WebFooter()
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Gmail',
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Images',
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(width: 10),
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
