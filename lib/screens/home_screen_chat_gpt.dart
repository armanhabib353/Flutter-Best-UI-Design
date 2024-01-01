import 'package:design_code/components/home_screen_nav_bar.dart';
import 'package:design_code/components/lists/explore_course_list.dart';
import 'package:design_code/components/lists/recent_course_list_chat_gpt.dart';
import 'package:design_code/constants.dart';
import 'package:design_code/screens/sidebar_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2>
    with TickerProviderStateMixin {
  late Animation<Offset> sidebarAnimation;
  late Animation<double> fadeAnimation;
  late AnimationController sidebarAnimationController;

  var sidebarHidden = true;

  @override
  void initState() {
    super.initState();
    sidebarAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    sidebarAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: sidebarAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: sidebarAnimationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    sidebarAnimationController.dispose();
    super.dispose();
  }

  void triggerSidebarAnimation() {
    setState(() {
      sidebarHidden = !sidebarHidden;
    });
    if (sidebarHidden) {
      sidebarAnimationController.reverse();
    } else {
      sidebarAnimationController.forward();
      FocusScope.of(context).unfocus(); // Dismiss the keyboard
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true, // This should be true
      body: SingleChildScrollView(
        child: FocusScope(
          node: FocusScopeNode(),
          // Allows buttons to work properly
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
              color: kBackgroundColor,
              child: Stack(
                children: [
                  SafeArea(
                    child: Column(
                      children: [
                        HomeScreenNavBar(
                            triggerAnimation: triggerSidebarAnimation),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Recent",
                                style: kLargeTitleStyle,
                              ),
                              Text(
                                "23 Courses, more coming..",
                                style: kSubtitleStyle,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const RecentCourseList2(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 10, right: 10, bottom: 10),
                              child: Text(
                                "Explore",
                                style: kTitle1Style,
                              ),
                            ),
                            const ExploreCourseList(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IgnorePointer(
                    ignoring: sidebarHidden,
                    child: Stack(
                      children: [
                        FadeTransition(
                          opacity: fadeAnimation,
                          child: GestureDetector(
                            onTap: triggerSidebarAnimation,
                            child: Container(
                              color: const Color.fromRGBO(36, 38, 41, 0.4),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        SlideTransition(
                          position: sidebarAnimation,
                          child: const SafeArea(
                            bottom: false,
                            child: SidebarScreen(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
