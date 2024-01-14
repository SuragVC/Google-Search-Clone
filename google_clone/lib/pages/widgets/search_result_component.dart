import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/pages/widgets/link_text.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatelessWidget {
  final String linkToGo;
  final String link;
  final String text;
  final String desc;
  const SearchResultComponent({
    Key? key,
    required this.linkToGo,
    required this.link,
    required this.text,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          link,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: LinkText(
            link: link,
            text: text,
            textStyle: const TextStyle(
              color: blueColor,
              fontSize: 20,
            ),
            onTap: () async {
              _launchUrl(Uri.parse(linkToGo));
            },
          ),
        ),
        Text(
          desc,
          style: const TextStyle(
            fontSize: 14,
            color: primaryColor,
          ),
        ),
      ],
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
