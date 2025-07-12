import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_text_field.dart';
import 'package:tyamo/interfaces/Auth/forgot_password.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _ForgotBtnController =
      RoundedLoadingButtonController();

  ForgotPasswordServices forgotPasswordServices = ForgotPasswordServices();

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(height: 60),
              AuthHeading(
                maintext: "Forgot Password",
                subtext: "",
                logo: "assets/images/symbol.png",
                fontsize: 16.sp,
                logosize: 20.sp,
              ),
              SizedBox(
                height: 20.h,
                width: 40.w,
                child: Image.asset(
                  "assets/images/forgotpassword.png",
                  filterQuality: FilterQuality.high,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "To request a password reset, please enter your email address below.",
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              AuthTextField(
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                obscureText: false,
                icon: Icons.alternate_email,
                size: 14.sp,
                controller: forgotPasswordServices.emailController,
              ),
              SizedBox(height: 20),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _ForgotBtnController,
                  color: Color(0xff00c1aa),
                  onPressed: () {},
                  child: Text(
                    "Send",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
