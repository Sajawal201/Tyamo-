import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/features/deviceinfo/UserStutas/two_value_card.dart';
import 'package:tyamo/Views/features/deviceinfo/Userinfo/one_value_card.dart';

class UserStatus extends StatefulWidget {
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> stutas = ["AWAY", "DO NOT DISTURB", "DRIVING", "EATING"];

  List<String> stutas2 = ["MEATING", "OUTDOORS", "SLEEPING", "WORKING"];

  String selectedStatus = "AWAY";

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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF86AAEB), Color(0xFF92E9E3)],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Friends Stutas:",
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: TwoValueCard(
                                    text: "User is",
                                    value: "",
                                    textclr: Color(0xff23ABE1),
                                    clr: Colors.white,
                                    subwidget: Text(
                                      "Online",
                                      style: GoogleFonts.nunito(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff23ABE1),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TwoValueCard(
                                    text: "Last App Action",
                                    value: "",
                                    textclr: Color(0xff23ABE1),
                                    clr: Colors.white,
                                    subwidget: Text(
                                      "2 minutes ago",
                                      style: GoogleFonts.nunito(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff23ABE1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: TwoValueCard(
                                text: "User Stutas",
                                value: "",
                                textclr: Color(0xff23ABE1),
                                clr: Colors.white,
                                subwidget: Text(
                                  "Driving",
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff23ABE1),
                                  ),
                                ),
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
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "My Stutas: ",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff989898),
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Eating",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff23ABE1),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        itemCount: stutas.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedStatus = stutas[index];
                                    });
                                  },
                                  child: OneValueCard(
                                    value: stutas[index],
                                    clr:
                                        selectedStatus == stutas[index]
                                            ? Colors.blue
                                            : Color(0xFF84abe4),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedStatus = stutas2[index];
                                    });
                                  },
                                  child: OneValueCard(
                                    value: stutas2[index],
                                    clr:
                                        selectedStatus == stutas2[index]
                                            ? Colors.blue
                                            : Color(0xFF84abe4),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
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
