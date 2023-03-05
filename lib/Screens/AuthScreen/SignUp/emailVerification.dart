import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Widgets/FrontEnd/delayedAnimation.dart';
import '../../../Widgets/FrontEnd/reusableFrontVariables.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
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
                "Verification de l'adresse mail", 
                textAlign: TextAlign.left,
                style: GoogleFonts.playfairDisplay(
                  fontSize: 47,
                  fontWeight: FontWeight.bold,
                  color: c_headline,
                ),
              ),
            ),
            DelayedAnimation(
              delay: 1500, child: Text(
                "Nous venons de vous envoyer un mail pour verifier que vous n'êtes pas un tobot", 
                textAlign: TextAlign.left,
                style: GoogleFonts.urbanist(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  color: c_paragraph,
                ),
              ),
            ),
            const SizedBox(height: 25),
            DelayedAnimation(
              delay: 2100, 
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: c_button,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(5), 
                    onPrimary: c_background,                  
                  ),
                  onPressed: () {}, 
                  child: Text(
                    'Renvoyer...',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 35,
                      color: c_buttonText,
                    ),
                  )
                ),
              )
            ),
            const SizedBox(height: 5),
            DelayedAnimation(
              delay: 3000, 
              child: Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Merci de regardez dans les SPAM'),
                      content: const Text("Merci de regardez dans vos SPAM ou d'attendre quelque minutes. Sinon visitez https://loxy.com/support"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('FERMER'),
                        ),
                      ],
                    ),
                  ),
                  child: Text(
                    'Vous ne recevez aucun mail ?', 
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