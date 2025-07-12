import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Homepage/dashboard.dart';
import 'package:tyamo/Views/Widgets/Homepage/drawer_list_tile.dart';
import 'package:tyamo/Views/profile/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();

  List<IconData> iconList = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
  ];

  int page = 0;
  int pageView = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },

      children: [Profile(), Dashboard(), Container(color: Colors.blue)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepageKey,
      appBar: AppBar(
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/logo.png',
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            _homepageKey.currentState!.openDrawer();
          },
          child: Icon(Icons.menu, color: Colors.black),
        ),
        actions: [
          Container(
            width: 50,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset(
              'assets/dashboard/message.png',
              filterQuality: FilterQuality.high,
            ),
          ),
        ],
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
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
                          onTap: () {
                            pageController.animateToPage(
                              0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                            Navigator.pop(context);
                          },
                          animateFromOldImageOnUrlChange: true,
                          placeHolder: (context, url) {
                            return Container(
                              child: Center(child: CircularProgressIndicator()),
                            );
                          },
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sajawal",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              "@sajawal123",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                letterSpacing: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Text(
                        "Premium",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 0, child: Divider()),
            SizedBox(height: 20),
            Column(
              children: [
                DrawerListTile(
                  title: "Subscription",
                  icon: FontAwesomeIcons.solidCreditCard,
                ),
                DrawerListTile(title: "Setting", icon: Icons.settings),
                DrawerListTile(
                  title: "Help",
                  icon: FontAwesomeIcons.circleQuestion,
                ),
                DrawerListTile(
                  title: "feedback",
                  icon: FontAwesomeIcons.message,
                ),
                DrawerListTile(
                  title: "Tell Others",
                  icon: FontAwesomeIcons.share,
                ),
                DrawerListTile(
                  title: "Rate Us",
                  icon: FontAwesomeIcons.starHalfStroke,
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(),
                  DrawerListTile(
                    title: "Logout",
                    icon: FontAwesomeIcons.rightFromBracket,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: page,
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.none,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (p0) {
          setState(() {
            pageView = p0;
            pageController.animateToPage(
              p0,
              duration: Duration(microseconds: 200),
              curve: Curves.linear,
            );
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}
