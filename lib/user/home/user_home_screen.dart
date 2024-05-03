import 'package:flutter/material.dart';
import 'package:kar_go/user/home/view/consult_screen.dart';
import 'package:kar_go/user/home/view/hand_screen.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  int _activeIndex = 0;

  final List<Widget> tabList = [
    const HandScreen(),
    const ConsultScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeIndex,
        onTap: (value) {
          _activeIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.handshake,
              ),
              label: "Hand"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.medical_information,
              ),
              label: "Consult"),
        ],
      ),
      body: tabList[_activeIndex],
    );
  }
}
