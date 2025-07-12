import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widgets/generalinfo/two_widget_card.dart';
import 'package:tyamo/Views/features/deviceinfo/UserStutas/two_value_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
            colors: [Color(0xFF50C9C2), Color(0xFF95DEDA)],
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
                  "General Info",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            Expanded(
              flex: 10,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: TwoValueCard(
                              text: "Screen Stutas",
                              value: "UNLOCKED",
                              textclr: Color(0xff55CAC4),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TwoWidgetCard(
                              text1: "System Volume",
                              value1: "0 / 7",
                              textclr1: Color(0xff55CAC4),
                              text2: "Media Volume",
                              value2: "4 / 7",
                              textclr2: Color(0xff55CAC4),
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
                            child: TwoWidgetCard(
                              text1: "Light Activity",
                              value1: "Dim Light",
                              textclr1: Color(0xff55CAC4),
                              text2: "Light Intensity",
                              value2: "4",
                              textclr2: Color(0xff55CAC4),
                            ),
                          ),

                          Expanded(
                            child: TwoValueCard(
                              text: "Brightness",
                              value: "5.88%",
                              textclr: Color(0xff55CAC4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Last Update: 1 mint ago",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 10,
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
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My General Stutas",
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff989898),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: TwoValueCard(
                                    text: "Screen Stutas",
                                    value: "UNLOCKED",
                                    textclr: Colors.white,
                                    clr: Color(0xff55CAC4),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: TwoWidgetCard(
                                    text1: "System Volume",
                                    value1: "0 / 7",
                                    textclr1: Colors.white,
                                    clr1: Color(0xff55CAC4),
                                    text2: "Media Volume",
                                    value2: "4 / 7",
                                    textclr2: Colors.white,
                                    clr2: Color(0xff55CAC4),
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
                                  child: TwoWidgetCard(
                                    text1: "Light Activity",
                                    value1: "Dim Light",
                                    textclr1: Colors.white,
                                    clr1: Color(0xff55CAC4),
                                    text2: "Light Intensity",
                                    value2: "4",
                                    textclr2: Colors.white,
                                    clr2: Color(0xff55CAC4),
                                  ),
                                ),

                                Expanded(
                                  child: TwoValueCard(
                                    text: "Brightness",
                                    value: "5.88%",
                                    textclr: Colors.white,
                                    clr: Color(0xff55CAC4),
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
