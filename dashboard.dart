import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Homepage/Dashboard/dashboard_gradient_feature.dart'
    show DashboardGradientFeature;

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Dashboard",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 25),
            alignment: Alignment.centerLeft,
            child: Text(
              "Your Friends",
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                color: Color(0xff990099),
                fontWeight: FontWeight.w900,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 25,
                            ),
                            child: CircularProfileAvatar(
                              "",
                              backgroundColor: Colors.cyan,
                              borderWidth: 1,
                              borderColor: Colors.deepPurpleAccent,
                              elevation: 20,
                              radius: 40,
                              cacheImage: true,
                              errorWidget: (context, url, error) {
                                return Icon(Icons.face, size: 50);
                              },
                              onTap: () {},
                              animateFromOldImageOnUrlChange: true,
                              placeHolder: (context, url) {
                                return Container(
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.fiber_manual_record,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Sajawal",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.cyan,
                                      size: 40,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        "Chak no 201eb burewala",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.nunito(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Text(
                                  "Stutas",
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Offline",
                                  style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(color: Colors.deepPurple),
                        ),

                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Text(
                                  "User Stutas",
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "N/A",
                                  style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(color: Colors.deepPurple),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              "User Stutas",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: DashboardGradientFeature(
                  iconImg: "assets/dashboard/device.png",
                  btnText: "Device info",
                  clr: [Color(0xff4FC174), Color(0xff00D7A9)],
                  weight: null,
                ),
              ),
              Flexible(
                child: DashboardGradientFeature(
                  iconImg: "assets/dashboard/gallery.png",
                  btnText: "Gallery",
                  clr: [Color(0xffF7DB00), Color(0xffF7A100)],
                  weight: null,
                ),
              ),
              Flexible(
                child: DashboardGradientFeature(
                  iconImg: "assets/dashboard/mood.png",
                  btnText: "Mood",
                  clr: [Color(0xff9A01D6), Color(0xffC701D6)],
                  weight: null,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Feature",
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                  color: Color(0xff004C99),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/playlist.png",
                    btnText: "playlist",
                    weight: FontWeight.w900,
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/location.png",
                    btnText: "location",
                    weight: FontWeight.w900,

                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/todo.png",
                    btnText: "To-do-List",
                    weight: FontWeight.w900,
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/diary.png",
                    btnText: "Diary",
                    weight: FontWeight.w900,

                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/notes.png",
                    btnText: "Surprise Notes",
                    weight: FontWeight.w900,
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/horoscope.png",
                    btnText: "Horocopes",
                    weight: FontWeight.w900,

                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/sos.png",
                    btnText: "Emergency",
                    weight: FontWeight.w900,
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/activity.png",
                    btnText: "Activity",
                    weight: FontWeight.w900,

                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
