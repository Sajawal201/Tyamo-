import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/features/deviceinfo/UserStutas/two_value_card.dart';

class DeviceSpece extends StatelessWidget {
  const DeviceSpece({super.key});

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
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 13, 192, 177),
              Color.fromARGB(255, 4, 223, 157),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Device Information",
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: TwoValueCard(
                              text: "Total Run",
                              value: "5.36 GB",
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: TwoValueCard(
                              text: "Refresh Rate",
                              value: "60 Hz",
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: TwoValueCard(
                              text: "Fingerprint Sensor",
                              value: "Present",
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: TwoValueCard(
                              text: "Fingerprint Sensor",
                              value: "Yes",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: TwoValueCard(
                              text: "Internal Memory",
                              value: "59.36 / 110.05 GB",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: TwoValueCard(
                              text: "External Memory",
                              value: "N/A",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: TwoValueCard(
                              text: "Screen Size",
                              value: "6.06 inches",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: TwoValueCard(
                              text: "Resolution",
                              value: "2134x1080",
                            ),
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
      ),
    );
  }
}
