import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrSettingHeading extends StatelessWidget {
  final String headingText;

  PrSettingHeading({required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        headingText,
        textAlign: TextAlign.left,
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.5,
          color: Color(0xff671AFC),
        ),
      ),
    );
  }
}
