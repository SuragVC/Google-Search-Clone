import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';

class SearchButton extends StatelessWidget {
  final String tittle;
  const SearchButton({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: searchColor,
      elevation: 1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      onPressed: () {},
      child: Text(tittle),
    );
  }
}
