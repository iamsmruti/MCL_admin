import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  final onTap;
  final int currentIndex;
  const BottomNavigationWidget(
      {super.key, required this.onTap, required this.currentIndex});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.shade400,
      unselectedLabelStyle:
          TextStyle(color: Colors.grey.shade400, fontSize: 12),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 0,
      onTap: widget.onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.class_),
          label: "Courses",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "Students",
        ),
      ],
    );
  }
}
