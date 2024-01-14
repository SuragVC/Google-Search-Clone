import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_clone/constants/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
          color: footerColor,
          padding: size.width > 786
              ? const EdgeInsets.symmetric(horizontal: 150, vertical: 15)
              : const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              Text(
                "India",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const Gap(10),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const Gap(10),
              const Icon(
                Icons.circle,
                color: Color(0xFF70757A),
                size: 12,
              ),
              const Gap(10),
              const Text(
                "124562, Delhi, NewDelhi",
                style: TextStyle(fontSize: 14, color: primaryColor),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 0,
          height: 0,
          color: Colors.black,
        ),
        const Gap(10),
        Container(
          color: footerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Text(
                "Help",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const Gap(20),
              Text(
                "Send Feedback",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const Gap(20),
              Text(
                "Privacy",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const Gap(20),
              Text(
                "Terms",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const Gap(20),
            ],
          ),
        )
      ],
    );
  }
}
