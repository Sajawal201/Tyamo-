import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OneValueCard extends StatelessWidget {
  final String value;
  final Color clr;
  final Color? txtclr;

  OneValueCard({required this.value, required this.clr, this.txtclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      child: Card(
        color: clr,
        elevation: 10,
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    value,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: txtclr ?? Colors.white,
                    ),
                    textAlign: TextAlign.center,
                    textScaleFactor: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
