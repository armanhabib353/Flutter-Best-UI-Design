import 'package:design_code/components/cards/recent_coutse_card_chat_gpt.dart';
import 'package:design_code/model/course.dart';
import 'package:flutter/material.dart';

class RecentCourseList2 extends StatefulWidget {
  const RecentCourseList2({super.key});

  @override
  State<RecentCourseList2> createState() => _RecentCourseList2State();
}

class _RecentCourseList2State extends State<RecentCourseList2> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.63);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Widget> buildIndicators() {
    return List<Widget>.generate(recentCourses.length, (index) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 7,
        height: 7,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentPage == index ? Colors.blue : const Color(0xFFA6AEBD),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          width: double.infinity,
          child: PageView.builder(
            controller: _pageController,
            itemBuilder: (context, index) {
              return Opacity(
                opacity: currentPage == index ? 1.0 : 0.5,
                child: RecentCourseCard2(courses: recentCourses[index]),
              );
            },
            itemCount: recentCourses.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buildIndicators(),
        ),
      ],
    );
  }
}
