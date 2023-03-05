// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loxy/Screens/AuthScreen/SignIn/loginMobile.dart';
import 'package:page_transition/page_transition.dart';
import '../../Widgets/FrontEnd/delayedAnimation.dart';
import '../../Widgets/FrontEnd/reusableFrontVariables.dart';

class HomeAuth extends StatelessWidget {
  const HomeAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_background,
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DelayedAnimation(delay: 1000, child: Text(
              'Bienvenue !', 
              textAlign: TextAlign.left,
              style: GoogleFonts.playfairDisplay(
                fontSize: 47,
                fontWeight: FontWeight.bold,
                color: c_headline,
              ),
            ),),
            DelayedAnimation(delay: 1500, child: Text(
              'On commence comment ?', 
              style: GoogleFonts.urbanist(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: c_paragraph,
              ),
            ),),
            const SizedBox(height: 25),
            DelayedAnimation(
              delay: 2000, 
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: c_button,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(5)
                  ),
                  onPressed: () {}, 
                  child: Text(
                    'Inscription',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 35,
                      color: c_buttonText,
                    ),
                  )
                ),
              )
            ),
            const SizedBox(height: 10),
            DelayedAnimation(
              delay: 2500, 
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: c_button, side: const BorderSide(
                      color: c_button, 
                      width: 5,
                    ),
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(5)
                  ),
                  onPressed: () {
                    Navigator.push(context, PageTransition(child: SignIn(), type: PageTransitionType.bottomToTop));
                  }, 
                  child: Text(
                    'Connexion',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 35,
                      color: c_buttonText,
                    ),
                  )
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}