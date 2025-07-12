import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_text_field.dart';
import 'package:tyamo/Views/invitation/invite_friend.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _ProfileBtnController =
      RoundedLoadingButtonController();

  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/logo.png',
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            filterQuality: FilterQuality.high,
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xff000221)),
              child: Text(
                'profile setup',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox(height: 20),
            CircularProfileAvatar(
              "",
              backgroundColor: Colors.cyan,
              initialsText: Text(
                '+',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextField(
                labelText: "Your Name",
                icon: Icons.face,
                size: 16,
                keyboardType: TextInputType.text,
                obscureText: false,
                controller: TextEditingController(),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextField(
                labelText: "Your username",
                icon: Icons.email,
                size: 16,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                controller: TextEditingController(),
              ),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: isMale ? Colors.cyan : Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1.0, 9.0),
                          blurRadius: 30.0,
                        ),
                      ],
                    ),
                    child: Icon(Icons.male, color: Colors.white),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: !isMale ? Colors.purple : Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1.0, 9.0),
                          blurRadius: 30.0,
                        ),
                      ],
                    ),
                    child: Icon(Icons.female, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 250,
              child: Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _ProfileBtnController,
                  color: Color(0xff00c1aa),
                  onPressed: () {
                    _ProfileBtnController.success();
                    Future.delayed(Duration(seconds: 3), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InviteFriend()),
                      );
                    });
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
