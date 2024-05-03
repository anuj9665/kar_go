import 'package:flutter/material.dart';
import 'package:kar_go/user/home/view/doctor_detail_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class DoctorsListScreen extends StatefulWidget {
  const DoctorsListScreen({super.key, required this.docType});
  final String docType;

  @override
  State<DoctorsListScreen> createState() => _DoctorsListScreenState();
}

class _DoctorsListScreenState extends State<DoctorsListScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.docType} near you"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
                1,
                (index) => Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    'https://picsum.photos/200/300'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr. Anuj Yadav",
                                      style: textTheme.titleLarge?.copyWith(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                        "46-A Ramesh Nagar , New Delhi, Pin 110015"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FilledButton(
                              onPressed: () {
                                try {
                                  launchUrl(Uri.parse("tel://9899462574"));
                                } catch (e) {
                                  debugPrint(e.toString());
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                                child: const Center(
                                  child: Text("Connect"),
                                ),
                              ))
                        ],
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
