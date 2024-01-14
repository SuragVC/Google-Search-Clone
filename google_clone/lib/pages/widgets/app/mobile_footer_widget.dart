import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/pages/widgets/domain_switcher.dart';
import 'package:google_clone/pages/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Wrap(
              children: [
                FooterText(title: 'About'),
                SizedBox(width: 10),
                FooterText(title: 'Advertising'),
                SizedBox(width: 10),
                FooterText(title: 'Business'),
                SizedBox(width: 10),
                FooterText(title: 'How Search Works'),
                FooterText(title: 'Privacy'),
                SizedBox(width: 10),
                FooterText(title: 'Terms'),
                SizedBox(width: 10),
                FooterText(title: 'Settings'),
              ],
            ),
            Align(alignment: Alignment.bottomRight, child: DomainSwitcher())
          ],
        ),
      ),
    );
  }
}
