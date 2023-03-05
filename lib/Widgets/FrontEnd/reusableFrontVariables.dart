// ignore_for_file: file_names, unused_import, constant_identifier_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const c_background = Color(0xFFFAEEE7);
const c_headline = Color(0xFF33272A);
const c_paragraph = Color(0xFF594A4E);
const c_button = Color(0xFFFF8BA7);
const c_buttonText = Color(0xFF33272A);
const c_inputText = Color(0xFFA89EA0);
const c_inputTextInput = Color(0xFF594A4E);
const c_input = Color(0xFFE8E2DF);

TextField reusableTextFieldNoIcon (
  String text,
  bool isPasswordType,
  TextEditingController controller,
) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: c_inputText,
    style: GoogleFonts.urbanist(
      color: c_inputTextInput.withOpacity(0.9),
      fontWeight: FontWeight.bold,
    ),
    decoration: InputDecoration(
      labelText: text,
      labelStyle: GoogleFonts.urbanist(color: c_inputText),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: c_input.withOpacity(0.9),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(
          width: 0, 
          style: BorderStyle.none,
        ),
      ),
    ),
    keyboardType: isPasswordType
      ? TextInputType.visiblePassword
      : TextInputType.emailAddress,
  );
}