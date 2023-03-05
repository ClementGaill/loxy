// ignore_for_file: file_names, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loxy/Screens/AuthScreen/homeAuth.dart';
import 'package:page_transition/page_transition.dart';
import '../Widgets/FrontEnd/delayedAnimation.dart';
import '../Widgets/FrontEnd/reusableFrontVariables.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterSplash();
  }

  _navigateAfterSplash() async {
    await Future.delayed(const Duration(milliseconds: 3500), () {});

    Navigator.push(context, PageTransition(child: const HomeAuth(), type: PageTransitionType.fade));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_background,
        body: Center(
          child: DelayedAnimation(
            delay: 1000, 
            child: Text('LOXY', style: GoogleFonts.playfairDisplay(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: c_headline,
            ),
          ),
        ),
      ),
    );
  }
}