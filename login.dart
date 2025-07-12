import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/forgot_password.dart';
import 'package:tyamo/Views/Auth/register.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_text_field.dart';
import 'package:tyamo/Views/profile/profile_setup.dart';
import 'package:tyamo/controller/usercontroller/user_controller.dart';
import 'package:tyamo/interfaces/Auth/login_services.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final RoundedLoadingButtonController _loginBtnController =
      RoundedLoadingButtonController();

  LoginServices loginServices = LoginServices();

  void loginbt() {
    print("Button Clicked");
  }

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
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              AuthHeading(
                maintext: "Sign in to Tyamo",
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
                size: 15.sp,
                controller: loginServices.emailController,
              ),

              SizedBox(height: 20),
              AuthTextField(
                keyboardType: TextInputType.text,
                labelText: "password",
                obscureText: true,
                icon: Icons.password,
                size: 15.sp,
                controller: loginServices.passwordController,
              ),
              SizedBox(height: 20),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _loginBtnController,
                  color: Color(0xff00c1aa),
                  onPressed: () {
                    UserController().loginUser(
                      loginServices.emailController.text,
                      loginServices.passwordController.text,
                    );

                    // _loginBtnController.success();
                    // Future.delayed(Duration(seconds: 3), () {
                    //   Navigator.pushReplacement(
                    //     context,
                    //     PageTransition(
                    //       type: PageTransitionType.fade,
                    //       child: ProfileSetup(),
                    //     ),
                    //   );
                    // });
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: ForgotPassword(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Color.fromARGB(255, 250, 2, 2),
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
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
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Register(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
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
      ),
    );
  }
}
