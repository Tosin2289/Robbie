import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_ai/constants/image_strings.dart';
import 'package:my_ai/screens/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToAnotherScreen();
  }

  navigateToAnotherScreen() async {
    await Future.delayed(const Duration(milliseconds: 2500), (() {}));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const StartScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ai1,
                width: 200,
              ),
              Text(
                "MyAi",
                style: GoogleFonts.concertOne(
                  fontSize: 65,
                  fontWeight: FontWeight.w800,
                ),
              )
            ],
          ),
        ));
  }
}
