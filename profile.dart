import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'MY PROFILE',
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.black,
              letterSpacing: 2,
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/doodle.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: CircularProfileAvatar(
              "",
              backgroundColor: Colors.cyan,
              borderWidth: 1,
              borderColor: Colors.deepPurpleAccent,
              elevation: 20,
              radius: 60,
              cacheImage: true,
              errorWidget: (context, url, error) {
                return Icon(Icons.face, size: 50);
              },
              onTap: () {},
              animateFromOldImageOnUrlChange: true,
              placeHolder: (context, url) {
                return Container(
                  child: Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Sajawal",
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "@sajawal123",
            style: GoogleFonts.nunito(fontSize: 14, letterSpacing: 0),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              side: WidgetStateProperty.all<BorderSide>(
                BorderSide(color: Color(0xff671AFC)),
              ),
              backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
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
                'Edit Profile',
                style: GoogleFonts.poppins(
                  color: Color(0xff671AFC),
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CardDetailRow(
                  type: "Email",
                  icon: Icon(Icons.alternate_email),
                  val: "raja435@gmail.com",
                  clr: Colors.grey.shade200,
                ),
                CardDetailRow(
                  type: "Country",
                  icon: Icon(Icons.outlined_flag),
                  val: "united states",
                  clr: Colors.transparent,
                ),

                CardDetailRow(
                  type: "Phone Number",
                  icon: Icon(Icons.phone),
                  val: "Not Currently Set",
                  clr: Colors.grey.shade200,
                ),
                more
                    ? CardDetailRow(
                      type: "Gender",
                      icon: Icon(FontAwesomeIcons.venusMars),
                      val: "Male",
                      clr: Colors.transparent,
                    )
                    : Container(),

                more
                    ? CardDetailRow(
                      type: "partner",
                      icon: Icon(Icons.percent_outlined),
                      val: "Raja",
                      clr: Colors.grey.shade200,
                    )
                    : Container(),
                more
                    ? CardDetailRow(
                      type: "UID",
                      icon: Icon(Icons.fingerprint),
                      val: "Mp09986765hf",
                      clr: Colors.transparent,
                    )
                    : Container(),
                more
                    ? CardDetailRow(
                      type: "Account Type",
                      icon: Icon(Icons.schedule),
                      val: "25-8-2023",
                      clr: Colors.grey.shade200,
                    )
                    : Container(),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              side: WidgetStateProperty.all<BorderSide>(
                BorderSide(color: Colors.grey.shade200),
              ),
              backgroundColor: WidgetStateProperty.all<Color>(
                Colors.grey.shade200,
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),

            onPressed: () {
              setState(() {
                more = !more;
              });
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                more ? '- Show More' : "+ Show More",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffff9966),
                      Color.fromARGB(255, 255, 94, 98),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed to",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Premium",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed on",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "N/A",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  const CardDetailRow({
    super.key,
    required this.type,
    required this.icon,
    required this.val,
    required this.clr,
  });

  final String type;
  final Widget icon;
  final String val;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10),
            icon,
            SizedBox(width: 10),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color:
                          val == "Not Currently Set"
                              ? Colors.red
                              : Colors.black,
                      letterSpacing: 1,
                    ),
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
