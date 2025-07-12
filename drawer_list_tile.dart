import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerListTile({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Container(
          alignment: Alignment.center,
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(icon, color: Color(0xff00D7CC)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: 1,
                    color: Color(0xff2a3d66),
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
