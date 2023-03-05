import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loxy/Screens/AuthScreen/SignUp/emailVerification.dart';
import 'package:loxy/Widgets/FrontEnd/reusableFrontVariables.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Widgets/FrontEnd/delayedAnimation.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: c_paragraph.withOpacity(0.7),
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: c_background,
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DelayedAnimation(
              delay: 1000, child: Text(
                'Inscription', 
                textAlign: TextAlign.left,
                style: GoogleFonts.playfairDisplay(
                  fontSize: 47,
                  fontWeight: FontWeight.bold,
                  color: c_headline,
                ),
              ),
            ),
            const SizedBox(height: 25),
            DelayedAnimation(
              delay: 1700, 
              child: reusableTextFieldNoIcon('Email...', false, _emailController)
            ),
            const SizedBox(height: 7),
            DelayedAnimation(
              delay: 2000, 
              child: reusableTextFieldNoIcon('Mot de passe...', true, _passwordController)
            ),
            const SizedBox(height: 7),
            DelayedAnimation(
              delay: 2500, 
              child: reusableTextFieldNoIcon('Confirmer le mot de passe...', true, _confirmPasswordController)
            ),
            const SizedBox(height: 15),
            DelayedAnimation(
              delay: 3200, 
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: c_button,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(5)
                  ),
                  onPressed: () {
                    Navigator.push(context, PageTransition(child: EmailVerification(), type: PageTransitionType.rightToLeft, duration: const Duration(milliseconds: 500)));
                  }, 
                  child: Text(
                    'Continuer...',
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