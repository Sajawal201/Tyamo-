import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/invitation/accept_invite.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 40,
            child: Image.asset(
              'assets/images/logo.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: null,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: AcceptInvite(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.purple,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 27.sp,
              color: Color(0xff00D7CC),
              child: Text(
                'Invite Friends',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 17.sp,
                  letterSpacing: 1,
                ),
                // ignore: deprecated_member_use
                textScaleFactor: 1,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          hintText: 'Hi Sajawal, Type an exact username',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Nunito",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Icon(Icons.search, color: Colors.white, size: 30),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 350,
              width: 350,
              child: Image.asset(
                'assets/images/invite.png',
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Search your friend on tyamo \nInvite your friends to join Tyamo',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                letterSpacing: 1,
              ),
              // ignore: deprecated_member_use
              textScaleFactor: 1,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.purple),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),

              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Invite Friends',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
