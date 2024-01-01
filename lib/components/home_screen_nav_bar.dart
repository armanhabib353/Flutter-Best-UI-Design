import 'package:design_code/components/searchfield_widget.dart';
import 'package:design_code/components/sidebar_button.dart';
import 'package:design_code/constants.dart';
import 'package:flutter/material.dart';

// HomeScreenNavBar Start
class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({required this.triggerAnimation, super.key});

  final VoidCallback triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          const SearchFieldWidget(),
          const Icon(Icons.notifications, color: kPrimaryLabelColor),
          const SizedBox(width: 16),
          const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('asset/images/profile.jpg')),
        ],
      ),
    );
  }
}
