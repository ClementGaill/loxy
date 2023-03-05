// ignore_for_file: file_names, camel_case_types, unused_local_variable, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loxy/Widgets/FrontEnd/delayedAnimation.dart';
import 'package:loxy/Widgets/FrontEnd/reusableFrontVariables.dart';

class SignIn extends StatelessWidget {
 SignIn({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                'Connexion', 
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
              delay: 1500, 
              child: reusableTextFieldNoIcon('Email...', false, _emailController)
            ),
            const SizedBox(height: 7),
            DelayedAnimation(
              delay: 2000, 
              child: reusableTextFieldNoIcon('Mot de passe...', true, _passwordController)
            ),
            const SizedBox(height: 15),
            DelayedAnimation(
              delay: 2500, 
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
                    'Continuer...',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 35,
                      color: c_buttonText,
                    ),
                  )
                ),
              )
            ),
            DelayedAnimation(
              delay: 3000, 
              child: Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Mot de passe oublié ?', 
                    style: GoogleFonts.urbanist(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: c_inputText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}