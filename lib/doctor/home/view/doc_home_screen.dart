import 'package:flutter/material.dart';

class DocHomeScreen extends StatefulWidget {
  const DocHomeScreen({super.key});

  @override
  State<DocHomeScreen> createState() => _DocHomeScreenState();
}

class _DocHomeScreenState extends State<DocHomeScreen> {
  int _activeIndex = 0;

  final List<Widget> tabList = [
    const Center(
      child: Text("Your Patients will appear here"),
    ),
    const Center(
      child: Text("Your Info will appear here"),
    ),
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
                Icons.medical_services,
              ),
              label: "Patients"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.medical_information,
              ),
              label: "Info"),
        ],
      ),
      body: tabList[_activeIndex],
    );
  }
}
