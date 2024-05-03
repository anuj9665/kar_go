import 'package:flutter/material.dart';
import 'package:kar_go/user/home/user_home_screen.dart';
import 'package:kar_go/utils/widgets/common_text_field.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  String? email = "sumitiwari70@gmail.com";
  String? password = "12345678";
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to KarGo",
              style: textTheme.titleLarge?.copyWith(
                  color: colorScheme.primary, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Login with your credentials",
              style: textTheme.titleMedium?.copyWith(),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: size.height * 0.4,
                child: Image.asset("assets/images/login.jpg")),
            const SizedBox(
              height: 20,
            ),
            HeadingTextField(
              initialText: email,
              onChanged: (value) {
                email = value;
              },
              label: "Email",
              heading: "Email",
            ),
            HeadingTextField(
              initialText: password,
              onChanged: (value) {
                password = value;
              },
              label: "Password",
              heading: "Password",
            ),
            FilledButton(
              onPressed: () {
                if (email == "sumitiwari70@gmail.com" &&
                    password == "12345678") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserHomeScreen()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Invalid credentials"),
                    ),
                  );
                }
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Login"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
