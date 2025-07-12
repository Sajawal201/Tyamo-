import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

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
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black, size: 35),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 27.sp,
              color: Colors.purple,
              child: Text(
                'See Invitations',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  letterSpacing: 1,
                ),
                // ignore: deprecated_member_use
                textScaleFactor: 1,
              ),
            ),
            SizedBox(height: 50),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: SizedBox(
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 5, 15),
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: CircularProfileAvatar(
                                "",

                                backgroundColor: Colors.blue,
                                radius: 35,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  '@Sajawal201',
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "Sajawal",
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                GFButton(
                                  color: Color(0xff00D7CC),
                                  shape: GFButtonShape.pills,
                                  child: Text("Accept"),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 5),
                                GFButton(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  shape: GFButtonShape.pills,
                                  child: Text("Decline"),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: 350,
              width: 350,
              alignment: Alignment.center,
              child: Image.asset('assets/images/empty.webp'),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your recieved invitation are currently ",
                  style: GoogleFonts.nunito(
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  "Empty",
                  style: GoogleFonts.nunito(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
