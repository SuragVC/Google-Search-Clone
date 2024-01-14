import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/pages/search_page.dart';

class SearchHeader extends StatelessWidget {
  SearchHeader({super.key, this.query = ""});
  final String query;
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    searchController.text = query;
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 15, top: 5),
            child: Image.asset(
              'assets/images/google-logo.png',
              height: 30,
              width: 92,
            ),
          ),
          const Gap(25),
          Container(
            width: size.width * 0.45,
            decoration: BoxDecoration(
              color: searchColor,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: searchColor,
              ),
            ),
            height: 44,
            child: TextField(
              controller: searchController,
              onSubmitted: (text) {
                if (text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SearchPage(searchQuery: text, start: "0"),
                    ),
                  );
                }
              },
              style: const TextStyle(fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 15, bottom: 5),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/images/mic-icon.svg",
                          height: 20,
                          width: 20,
                        ),
                        const Gap(20),
                        const Icon(
                          Icons.search,
                          color: blueColor,
                        )
                      ],
                    ),
                  ),
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
