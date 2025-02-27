import 'package:design_code/constants.dart';
import 'package:flutter/material.dart';

// SearchFieldWidget Start
class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 12, right: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [
              BoxShadow(
                  color: kShadowColor, offset: Offset(0, 12), blurRadius: 16),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            cursorColor: kPrimaryLabelColor,
            decoration: InputDecoration(
              icon: const Icon(
                Icons.search,
                color: kPrimaryLabelColor,
                size: 20,
              ),
              border: InputBorder.none,
              hintText: "Search For Courses",
              hintStyle: kSearchPlaceholderStyle,
            ),
            style: kSearchTextStyle,
            onChanged: (newText) {
              // print(newText);
            },
          ),
        ),
      ),
    ));
  }
}
