import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoValueCard extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subwidget;
  final Color? clr;
  final Color? textclr;

  TwoValueCard({
    required this.text,
    required this.value,
    this.subwidget,
    this.clr,
    this.textclr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            subwidget ??
                Text(
                  value,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    color: textclr ?? Color(0xFFF57D7C),
                    fontSize: 18,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
