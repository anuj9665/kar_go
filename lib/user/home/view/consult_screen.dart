import 'package:flutter/material.dart';
import 'package:kar_go/user/home/view/doctors_list_screen.dart';

class ConsultScreen extends StatefulWidget {
  const ConsultScreen({super.key});

  @override
  State<ConsultScreen> createState() => _ConsultScreenState();
}

class _ConsultScreenState extends State<ConsultScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Consult a doctor"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              DoctorType(
                image: "assets/images/physiotherapy.png",
                title: 'Connect to Physiotherapist',
                screen: DoctorsListScreen(
                  docType: "Physiotherapist",
                ),
                subtitle:
                    "Physiotherapist helps you for this and that and thiose",
              ),
              DoctorType(
                image: "assets/images/ayurvedic.png",
                title: 'Connect to Ayurvedic',
                screen: DoctorsListScreen(
                  docType: "Ayurvedic Doctors",
                ),
                subtitle: "Ayurvedic helps you for this and that and thiose",
              ),
              DoctorType(
                image: "assets/images/yoga.png",
                title: 'Connect to Yoga Trainer',
                screen: DoctorsListScreen(
                  docType: "Yoga Trainers",
                ),
                subtitle: "Yoga Trainer helps you for this and that and thiose",
              ),
              DoctorType(
                image: "assets/images/alopathy.png",
                title: 'Connect to Alopathy',
                screen: DoctorsListScreen(
                  docType: "Alopathy Doctors",
                ),
                subtitle:
                    "Physiotherapist helps you for this and that and thiose",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorType extends StatelessWidget {
  const DoctorType({
    super.key,
    required this.title,
    required this.subtitle,
    required this.screen,
    required this.image,
  });

  final String title;
  final String subtitle;
  final Widget screen;
  final String image;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueGrey,
            ),
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            SizedBox(height: 70, width: 70, child: Image.asset(image)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style:
                  textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
