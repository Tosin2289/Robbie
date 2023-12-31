import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_ai/constants/image_strings.dart';
import 'package:my_ai/screens/home_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Robbie",
                  style: GoogleFonts.concertOne(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Text(
                  "Best Personal Assistant",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  ai2,
                  width: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                SlideAction(
                  onSubmit: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen();
                      },
                    ));
                  },
                  text: "Start a Conversation",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
