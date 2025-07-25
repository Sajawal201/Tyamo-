import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PrSettingSub extends StatelessWidget {
  final String title;
  final Widget? secondaryWidget;

  PrSettingSub({required this.title, this.secondaryWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                color: Colors.black,
              ),
            ),
          ),
          secondaryWidget ?? Icon(FontAwesomeIcons.arrowRight, size: 15),
        ],
      ),
    );
  }
}
