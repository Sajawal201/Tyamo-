import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class AuthHeading extends StatelessWidget {
  final String maintext;
  final String subtext;
  final String logo;
  final double fontsize;
  final double logosize;

  const AuthHeading({
    super.key,
    required this.maintext,
    required this.subtext,
    required this.logo,
    required this.fontsize,
    required this.logosize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 60),
        Row(
          children: [
            Text(
              maintext,
              style: GoogleFonts.poppins(
                fontSize: fontsize,
                color: Color(0xff00205C),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: logosize,
              height: logosize,
              child: Image.asset(logo, filterQuality: FilterQuality.high),
            ),
          ],
        ),
        Text(
          subtext,
          style: GoogleFonts.poppins(
            fontSize: fontsize,
            color: Color(0xff00205C),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
