import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/pages/search_page.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: size.width > 768 ? size.width * 0.2 : size.width * 0.5,
            child: const Image(
              image: AssetImage("assets/images/google-logo.png"),
            ),
          ),
        ),
        const Gap(10),
        SizedBox(
          width: size.width > 768 ? size.width * 0.4 : size.width * 0.8,
          child: TextFormField(
            onFieldSubmitted: (text) {
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
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: searchBorder),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/search-icon.svg',
                  color: searchBorder,
                  width: 1,
                  height: 1,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  'assets/images/mic-icon.svg',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
