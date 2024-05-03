import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandScreen extends StatefulWidget {
  const HandScreen({super.key});

  @override
  State<HandScreen> createState() => _HandScreenState();
}

class _HandScreenState extends State<HandScreen> {
  int _intensity = 5;
  int _frequency = 2;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Hi Sumi"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              "Make Some Hand Movement",
              style: textTheme.titleLarge,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: LottieBuilder.asset(
                "assets/lottie/hand_move.json",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Intensity",
                  style: textTheme.titleMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (_intensity == 20) return;
                        _intensity += 5;
                        setState(() {});
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      _intensity.toString(),
                      style: textTheme.titleMedium,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        if (_intensity == 0) return;
                        _intensity -= 5;
                        setState(() {});
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Frequency",
                  style: textTheme.titleMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (_frequency == 10) return;
                        _frequency += 1;
                        setState(() {});
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      _frequency.toString(),
                      style: textTheme.titleMedium,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        if (_frequency == 0) return;
                        _frequency -= 1;
                        setState(() {});
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.handshake),
                label: const Text("Start Movement"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
