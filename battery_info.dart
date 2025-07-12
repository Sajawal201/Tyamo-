import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tyamo/Views/features/deviceinfo/UserStutas/two_value_card.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
            colors: [Color(0xFFFAD585), Color(0xFFF47A7D)],
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
                  "Battery Stutas",
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: TwoValueCard(
                              text: "Stutas",
                              value: "Discharge",
                            ),
                          ),
                          Expanded(
                            child: TwoValueCard(
                              text: "Charging Type",
                              value: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: TwoValueCard(
                              text: "Charging Percentage",
                              value: "N/A",
                              subwidget: SleekCircularSlider(
                                min: 0,
                                max: 100,
                                appearance: CircularSliderAppearance(
                                  customColors: CustomSliderColors(
                                    progressBarColor: Color(0xFFF57D7C),
                                  ),
                                  infoProperties: InfoProperties(
                                    mainLabelStyle: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  size: 100,
                                  customWidths: CustomSliderWidths(
                                    progressBarWidth: 10,
                                  ),
                                ),
                                initialValue: 50,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TwoValueCard(
                              text: "Temprature",
                              value: "35.0",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: TwoValueCard(
                              text: "Battery Health",
                              value: "Good",
                            ),
                          ),
                          Expanded(
                            child: TwoValueCard(
                              text: "Battery   Technology",
                              value: "Li-poly",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My Battery Stutas",
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff989898),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: TwoValueCard(
                                    text: "Stutas",
                                    value: "Discharge",
                                    textclr: Colors.white,
                                    clr: Color(0xfff57D7C),
                                  ),
                                ),
                                Expanded(
                                  child: TwoValueCard(
                                    text: "Charging Type",
                                    value: "-",
                                    textclr: Colors.white,
                                    clr: Color(0xfff57D7C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: TwoValueCard(
                                    text: "Charging Percentage",
                                    clr: Color(0xfff57D7C),
                                    value: "N/A",
                                    textclr: Colors.white,
                                    subwidget: SleekCircularSlider(
                                      min: 0,
                                      max: 100,
                                      appearance: CircularSliderAppearance(
                                        customColors: CustomSliderColors(
                                          progressBarColor: Colors.white,
                                        ),
                                        infoProperties: InfoProperties(
                                          mainLabelStyle: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                        size: 100,
                                        customWidths: CustomSliderWidths(
                                          progressBarWidth: 10,
                                        ),
                                      ),
                                      initialValue: 50,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TwoValueCard(
                                    text: "Temprature",
                                    clr: Color(0xfff57D7C),
                                    value: "35.0",
                                    textclr: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: TwoValueCard(
                                    text: "Battery Health",
                                    clr: Color(0xfff57D7C),
                                    value: "Good",
                                    textclr: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: TwoValueCard(
                                    text: "Battery   Technology",
                                    clr: Color(0xfff57D7C),
                                    textclr: Colors.white,
                                    value: "Li-poly",
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
            ),
          ],
        ),
      ),
    );
  }
}
