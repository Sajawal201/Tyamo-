import 'dart:ui' as prefix0;
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/features/Album/image_view.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.ytimg.com/vi/9cG8zhw5BVs/maxresdefault.jpg",
                          ),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                        child: Container(
                          color: Colors.black.withOpacity(0.6),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                      "assets/images/logo.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: GFAvatar(
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: GestureDetector(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Hero(
                                      tag:
                                          "https://i.ytimg.com/vi/9cG8zhw5BVs/maxresdefault.jpg",
                                      child: Image.network(
                                        "https://i.ytimg.com/vi/9cG8zhw5BVs/maxresdefault.jpg",
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: ImageView(
                                          url:
                                              "https://i.ytimg.com/vi/9cG8zhw5BVs/maxresdefault.jpg",
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Container(
                                  height: 60,
                                  width: 250,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.favorite, color: Colors.red),
                                      SizedBox(width: 15),
                                      BalloonSlider(
                                        value: 0,
                                        onChanged: (value) {},
                                        onChangeEnd: (value) {},
                                        onChangeStart: (value) {},
                                        showRope: false,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Caption: ",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                color: Colors.cyan,
                              ),
                            ),
                            GestureDetector(
                              child: Icon(Icons.edit, color: Colors.cyan),
                              onTap: () {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.noHeader,
                                  title: "Edit Caption",
                                  body: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20,
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: "Enter new caption",
                                          labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito",
                                          ),
                                          fillColor: Colors.black,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.deepPurple,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.deepPurple,
                                            ),
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        minLines: 2,
                                      ),
                                    ),
                                  ),
                                  dismissOnBackKeyPress: true,
                                  isDense: false,
                                  btnOkText: "Confirm Caption",
                                  btnOkOnPress: () {},
                                ).show();
                              },
                            ),
                          ],
                        ),
                        FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 2.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          duration: Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset: 10.0,
                          bottomOffsetHeight: 80.0,
                          menuItems: [
                            FocusedMenuItem(
                              trailingIcon: Icon(FontAwesomeIcons.copy),
                              onPressed: () {},
                              title: Text(
                                "Copy",
                                textScaleFactor: 1,
                                style: GoogleFonts.nunito(color: Colors.black),
                              ),
                            ),
                            FocusedMenuItem(
                              backgroundColor: Colors.red,
                              trailingIcon: Icon(
                                FontAwesomeIcons.edit,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.noHeader,
                                  title: "Edit Caption",
                                  body: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20,
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: "Enter new caption",
                                          labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito",
                                          ),
                                          fillColor: Colors.black,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.deepPurple,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.deepPurple,
                                            ),
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        minLines: 2,
                                      ),
                                    ),
                                  ),
                                  dismissOnBackKeyPress: true,
                                  isDense: false,
                                  btnOkText: "Confirm Caption",
                                  btnOkOnPress: () {},
                                ).show();
                              },
                              title: Text(
                                "Edit",
                                textScaleFactor: 1,
                                style: GoogleFonts.nunito(color: Colors.white),
                              ),
                            ),
                          ],
                          child: ExpandableText(
                            "We'll place the caption hare ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            expandText: 'show more',
                            collapseText: 'show less',
                            maxLines: 2,
                            linkColor: Colors.orange,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Comment",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.purple,
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return FocusedMenuHolder(
                              onPressed: () {},
                              menuWidth:
                                  MediaQuery.of(context).size.width * 0.50,
                              blurSize: 2.0,
                              menuItemExtent: 45,
                              menuBoxDecoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              duration: Duration(milliseconds: 100),
                              animateMenuItems: true,
                              blurBackgroundColor: Colors.black54,
                              menuOffset: 10.0,
                              bottomOffsetHeight: 80.0,
                              menuItems: [
                                FocusedMenuItem(
                                  trailingIcon: Icon(FontAwesomeIcons.copy),
                                  onPressed: () {},
                                  title: Text(
                                    "Copy",
                                    textScaleFactor: 1,
                                    style: GoogleFonts.nunito(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                FocusedMenuItem(
                                  backgroundColor: Colors.red,
                                  title: Text(
                                    "Delete",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Nunito",
                                    ),
                                  ),
                                  trailingIcon: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                              child: ListTileMoreCustomizable(
                                title: Text(
                                  "@Sajawal12",
                                  textScaleFactor: 1,
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Colors.cyan,
                                  ),
                                ),
                                leading: GFAvatar(
                                  backgroundColor: Colors.blue,
                                  size: 25,
                                ),
                                horizontalTitleGap: 0.0,
                                minVerticalPadding: 10.0,
                                minLeadingWidth: 60,
                                contentPadding: EdgeInsets.all(10),
                                isThreeLine: false,
                                subtitle: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "This is my Comment",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                trailing: Text(
                                  "1 mint ago",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: null,
                                onLongPress: null,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: null,
                        focusNode: null,
                        keyboardType: TextInputType.multiline,
                        textCapitalization: TextCapitalization.sentences,
                        maxLines: 3,
                        minLines: 1,
                        style: TextStyle(color: Colors.white),
                        onChanged: (val) {},
                        decoration: InputDecoration(
                          hintText: "Start Conversation",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nunito",
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(20),
                          filled: true,
                          fillColor: Colors.orange,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.arrow_forward_ios, color: Colors.black),
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
