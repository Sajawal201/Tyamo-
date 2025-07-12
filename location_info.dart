import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

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
            colors: [
              Color.fromARGB(255, 218, 94, 243),
              Color.fromARGB(255, 171, 128, 241),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Location Stutas",
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.pin_drop,
                                    size: 50,
                                    color: Colors.red,
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Text(
                                      "North Loop, West Freeway, Houston, Texas",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        color: Color.fromARGB(
                                          255,
                                          199,
                                          42,
                                          238,
                                        ),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 200,
                      child: Card(
                        color: Colors.white,
                        elevation: 10,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "United Status",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 199, 42, 238),
                                    ),
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Last Update: 1 mint ago",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 16,
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
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My Location Stutas",
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff989898),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          color: Color.fromARGB(255, 199, 42, 238),
                          width: double.infinity,
                          height: 130,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.pin_drop,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Text(
                                      "North Loop, West Freeway, Houston, Texas",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 200,
                      child: Card(
                        color: Color.fromARGB(255, 199, 42, 238),
                        elevation: 10,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "United Status",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
