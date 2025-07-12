import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumNewPost extends StatelessWidget {
  const AlbumNewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/logo.png")),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Container(),
          Container(
            height: 300.0,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJitP_NR08xQhXe6z9SOMfT3aNHz5dC0W31g&s",
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blueAccent),
            title: Container(
              width: 250.0,
              child: TextField(
                controller: null,
                decoration: InputDecoration(
                  hintText: "Write a caption...",
                  border: InputBorder.none,
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 150.0,
              vertical: 50,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xffFFD700),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Post Picture",
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
