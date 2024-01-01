import 'package:design_code/constants.dart';
import 'package:design_code/model/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarRaw extends StatelessWidget {
  const SidebarRaw({
    required this.item,
    super.key,
  });

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 52,
          width: 52,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: item.background,
          ),
          child: item.icon,
        ),
        const SizedBox(width: 12),
        Text(
          item.title,
          style: kCalloutLabelStyle,
        ),
      ],
    );
  }
}
