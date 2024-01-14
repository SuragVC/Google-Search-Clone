import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_clone/pages/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            isActive: true,
            icon: Icons.search,
            text: "All",
          ),
          Gap(20),
          SearchTab(
            icon: Icons.image,
            text: "Images",
          ),
          Gap(20),
          SearchTab(
            icon: Icons.map,
            text: "Map",
          ),
          Gap(20),
          SearchTab(
            icon: Icons.article,
            text: "News",
          ),
          Gap(20),
          SearchTab(
            icon: Icons.shop,
            text: "Shoping",
          ),
          Gap(20),
          SearchTab(
            icon: Icons.more_vert,
            text: "More",
          ),
          Gap(20),
        ],
      ),
    );
  }
}
