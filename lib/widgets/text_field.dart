import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      textAlign: TextAlign.left,
      style: GoogleFonts.roboto(color: AppTheme.textDark),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(color: AppTheme.textGrey, fontSize: 14),
        prefixIcon: Icon(prefixIcon, color: AppTheme.textGrey, size: 20),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: AppTheme.fieldBackgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      ),
    );
  }
}