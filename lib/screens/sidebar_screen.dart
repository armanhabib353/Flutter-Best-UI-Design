import 'package:design_code/components/sidbar_row.dart';
import 'package:design_code/constants.dart';
import 'package:design_code/model/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
      decoration: const BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(35.0))),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Arman Habib",
                      style: kHeadlineLabelStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Mobile ',
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Apps',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' Developer'),
                        ],
                      ),
                    )
                    // AutoSizeText(
                    //   maxLines: 5,
                    //   "Software Engineer for Mobile Software Engineer for Mobile Software Engineer for Mobile",
                    //   style: kSearchPlaceholderStyle,
                    //   overflow: TextOverflow.ellipsis,
                    // )
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            SidebarRaw(item: sideBarItem[0]),
            const SizedBox(height: 32),
            SidebarRaw(item: sideBarItem[1]),
            const SizedBox(height: 32),
            SidebarRaw(item: sideBarItem[2]),
            const SizedBox(height: 32),
            SidebarRaw(item: sideBarItem[3]),
            const SizedBox(height: 32),
            SidebarRaw(item: sideBarItem[4]),
            const SizedBox(height: 32),
            const Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17,
                ),
                const SizedBox(width: 12),
                const Text("Log Out"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
