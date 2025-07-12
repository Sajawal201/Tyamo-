import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_text_field.dart';
import 'package:tyamo/controller/usercontroller/user_controller.dart';
import 'package:tyamo/interfaces/Auth/register_services.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _RegisterBtnController =
      RoundedLoadingButtonController();

  final RegisterServices registerServices = RegisterServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff00205C),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            AuthHeading(
              maintext: "Sign up to Tyamo",
              subtext: "To connect with \n your partner",
              logo: "assets/images/symbol.png",
              fontsize: 16.sp,
              logosize: 20.sp,
            ),

            SizedBox(height: 40),
            AuthTextField(
              keyboardType: TextInputType.emailAddress,
              labelText: "Email",
              obscureText: false,
              icon: Icons.alternate_email,
              size: 14.sp,
              controller: registerServices.emailController,
            ),

            SizedBox(height: 20),
            AuthTextField(
              keyboardType: TextInputType.text,
              labelText: "password",
              obscureText: true,
              icon: Icons.password,
              size: 14.sp,
              controller: registerServices.passwordController,
            ),
            SizedBox(height: 20),
            AuthTextField(
              keyboardType: TextInputType.text,
              labelText: "Confirm Password",
              obscureText: true,
              icon: Icons.lock_reset,
              size: 14.sp,
              controller: registerServices.confirmPasswordController,
            ),

            SizedBox(height: 20),
            Hero(
              tag: "Auth",
              child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                controller: _RegisterBtnController,
                color: Color(0xff00c1aa),
                onPressed: () {
                  if (registerServices.passwordController.text ==
                      registerServices.confirmPasswordController.text) {
                    UserController().registerUser(
                      registerServices.emailController.text,
                      registerServices.passwordController.text,
                    );
                  } else {
                    AchievementView(
                      title: "Error",
                      subTitle: "Passwords do not match",
                      color: Colors.red,
                    )..show(context);
                  }
                },
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "By Registering you agree to our Terms and Conditions",
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Color(0xff00205C),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
