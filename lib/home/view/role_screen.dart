import 'package:flutter/material.dart';
import 'package:kar_go/doctor/login/view/doctor_login_screen.dart';
import 'package:kar_go/researcher/view/research_screen.dart';
import 'package:kar_go/user/home/user_home_screen.dart';
import 'package:kar_go/user/login/view/user_login_screen.dart';

class SelectRoleScreen extends StatefulWidget {
  const SelectRoleScreen({super.key});

  @override
  State<SelectRoleScreen> createState() => _SelectRoleScreenState();
}

class _SelectRoleScreenState extends State<SelectRoleScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Your Role"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Column(
          children: [
            RoleType(
              title: "I'm a Patient",
              subtitle:
                  "Use Hand Movements , Check body gloves and consult doctor",
              color: Colors.blueAccent,
              screen: UserLoginScreen(),
            ),
            RoleType(
              title: "I'm a Doctor",
              subtitle: "See Patients Data , connect with Users",
              color: Colors.redAccent,
              screen: DocLoginScreen(),
            ),
            RoleType(
              title: "I'm a researcher",
              subtitle: "See researches based on Paralysis",
              color: Colors.tealAccent,
              screen: ResearchScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class RoleType extends StatelessWidget {
  const RoleType({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.screen,
  });
  final String title;
  final String subtitle;
  final Color color;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: color),
            color: color.withOpacity(0.1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style:
                  textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ));
  }
}
