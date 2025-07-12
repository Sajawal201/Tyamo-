import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/features/deviceinfo/top_banner.dart';
import 'package:tyamo/Views/features/gradient_button_container.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 100,
          width: 100,
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
      body: Column(
        children: [
          TopBanner(
            title: 'Device Info',
            clr: [Color(0xff4FC174), Color(0xff00D7A9)],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child: GradientButtonContainer(
                            title: 'User Status',
                            clr: [Color(0xFF86AAEB), Color(0xFF92E9E3)],
                            overlayColor: Colors.cyan,
                            isGradientVertical: true,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: GradientButtonContainer(
                            title: 'Battery',
                            clr: [Color(0xFFFAD585), Color(0xFFF47A7D)],
                            overlayColor: Colors.orangeAccent,
                            isGradientVertical: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GradientButtonContainer(
                      title: 'General',
                      clr: [Color(0xFF50C9C2), Color(0xFF95DEDA)],
                      overlayColor: Colors.teal.shade300,
                      isGradientVertical: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: GradientButtonContainer(
                      title: 'Device Space',
                      clr: [Color(0xFF02A9Af), Color(0xFF00CDAC)],
                      overlayColor: Color(0xff01BCAA),
                      isGradientVertical: true,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: GradientButtonContainer(
                          title: 'Location',
                          clr: [Color(0xFF8893D6), Color(0xFF8CA5DB)],
                          overlayColor: Color(0xffB159C6),
                          isGradientVertical: false,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: GradientButtonContainer(
                          title: 'Orientation',
                          clr: [Color(0xFFF27098), Color(0xFFFF9370)],
                          overlayColor: Color(0xffF98583),
                          isGradientVertical: true,
                        ),
                      ),
                    ],
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
