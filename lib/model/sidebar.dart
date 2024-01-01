import 'package:flutter/material.dart';

class SidebarItem {
  //Fields
  String title;
  LinearGradient background;
  Icon icon;

  // Constructor
  SidebarItem(this.title, this.background, this.icon);
}

var sideBarItem = [
  SidebarItem(
    "Home",
    const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 7, 245, 126),
        Color.fromARGB(255, 26, 228, 177),
      ],
    ),
    const Icon(Icons.home, color: Colors.white),
  ),

  // 2nd
  SidebarItem(
    'Settngs',
    const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 138, 32, 129),
        Color.fromARGB(255, 124, 33, 243),
      ],
    ),
    const Icon(Icons.settings, color: Colors.white),
  ),

  //3rd
  SidebarItem(
    'Buillings',
    const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 245, 7, 19),
        Color.fromARGB(255, 167, 13, 13),
      ],
    ),
    const Icon(Icons.settings_accessibility_outlined, color: Colors.white),
  ),

  // 4th
  SidebarItem(
    'Profile',
    const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 149, 151, 17),
        Color.fromARGB(255, 205, 243, 33),
      ],
    ),
    const Icon(Icons.person, color: Colors.white),
  ),

  //5th
  SidebarItem(
    'About US',
    const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 43, 7, 245),
        Color.fromARGB(255, 109, 107, 238),
      ],
    ),
    const Icon(Icons.more, color: Colors.white),
  ),
];
