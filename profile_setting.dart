import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/profile/pr_setting_heading.dart';
import 'package:tyamo/Views/Widgets/profile/pr_setting_sub.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 330,
                decoration: BoxDecoration(
                  color: const Color(0xff671AFC),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width,
                      130,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 23,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Settings",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      color: Colors.white,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              child: Row(
                                children: [
                                  CircularProfileAvatar(
                                    "",
                                    backgroundColor: Colors.transparent,
                                    borderWidth: 1,
                                    borderColor: Colors.deepPurpleAccent,
                                    elevation: 5.0,
                                    radius: 40,
                                    cacheImage: true,
                                    errorWidget: (context, url, error) {
                                      return Icon(Icons.face, size: 50);
                                    },
                                    onTap: () async {},
                                    animateFromOldImageOnUrlChange: true,
                                    placeHolder: (context, url) {
                                      return Container(
                                        child: Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Sajawal",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: Colors.grey.shade200, height: 5),
                            SizedBox(height: 20),
                            PrSettingHeading(headingText: "Profile Settings"),
                            SizedBox(height: 20),
                            PrSettingSub(title: "Edit Name"),
                            PrSettingSub(title: "Edit Phone Number"),
                            PrSettingSub(title: "Change Password"),
                            PrSettingSub(
                              title: "Email Stutas",
                              secondaryWidget: Row(
                                children: [
                                  Text(
                                    "Not Verified",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            PrSettingHeading(
                              headingText: "Notification Settings",
                            ),
                            SizedBox(height: 20),
                            PrSettingSub(
                              title: "Push Notifications",
                              secondaryWidget: GFToggle(
                                value: true,
                                onChanged: (value) {},
                                type: GFToggleType.android,
                                enabledTrackColor: Colors.greenAccent,
                              ),
                            ),
                            SizedBox(height: 20),
                            PrSettingHeading(
                              headingText: "Application Settings",
                            ),
                            SizedBox(height: 20),
                            PrSettingSub(
                              title: "Background Updates",
                              secondaryWidget: Row(
                                children: [
                                  Text(
                                    "Not Allowed",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
