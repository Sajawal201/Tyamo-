import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoWidgetCard extends StatelessWidget {
  final String text1;
  final String value1;
  final Widget? subwidget1;
  final Color? clr1;
  final Color? textclr1;

  final String text2;
  final String value2;
  final Widget? subwidget2;
  final Color? clr2;
  final Color? textclr2;

  TwoWidgetCard({
    required this.text1,
    required this.value1,
    this.subwidget1,
    this.clr1,
    this.textclr1,

    required this.text2,
    required this.value2,
    this.subwidget2,
    this.clr2,
    this.textclr2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr1 ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  subwidget1 ??
                      Text(
                        value1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          color: textclr2 ?? Color(0xFFF57D7C),
                          fontSize: 18,
                        ),
                      ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Text(
                    text2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  subwidget2 ??
                      Text(
                        value2,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          color: textclr2 ?? Color(0xFFF57D7C),
                          fontSize: 18,
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
