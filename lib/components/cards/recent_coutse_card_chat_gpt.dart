import 'package:design_code/constants.dart';
import 'package:design_code/model/course.dart';
import 'package:flutter/material.dart';

class RecentCourseCard2 extends StatelessWidget {
  const RecentCourseCard2({super.key, required this.courses});

  final Course courses;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            height: 240,
            width: 240,
            decoration: BoxDecoration(
              gradient: courses.background,
              borderRadius: BorderRadius.circular(41),
              boxShadow: [
                BoxShadow(
                  color: courses.background.colors[0].withOpacity(0.3),
                  offset: const Offset(0, 20),
                  blurRadius: 30,
                ),
                BoxShadow(
                  color: courses.background.colors[1].withOpacity(0.3),
                  offset: const Offset(0, 20),
                  blurRadius: 30,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 32,
                right: 32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courses.courseSubtitle,
                    style: kCardSubtitleStyle,
                  ),
                  Text(
                    courses.courseTitle,
                    style: kCardTitleStyle,
                  ),
                  const SizedBox(height: 10), // Add spacing if needed
                  // Use a fixed height or Flexible instead of Expanded
                  Flexible(
                    child: Image.asset(
                      'asset/illustrations/${courses.illustration}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            padding: const EdgeInsets.all(12),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 4),
                    blurRadius: 16,
                  )
                ]),
            // Remove Expanded here, it's not needed
            child: Image.asset(
              'asset/logos/${courses.logo}',
            ),
          ),
        ),
      ],
    );
  }
}
