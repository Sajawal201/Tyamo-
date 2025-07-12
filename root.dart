import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Homepage/homepage.dart';
import 'package:tyamo/Views/Widgets/Auth/splash_loader_animation.dart';
import 'package:tyamo/Views/invitation/invite_friend.dart';
import 'package:tyamo/Views/profile/profile_setup.dart';
import 'package:tyamo/controller/usercontroller/user_controller.dart';

enum AuthStutas {
  firstTime,
  authenticating,
  notloggedIn,
  loggedInHome,
  noProfile,
  noFriend,
}

class Root extends StatelessWidget {
  AuthStutas authStutas = AuthStutas.authenticating;

  @override
  Widget build(BuildContext context) {
    UserController userController = Provider.of<UserController>(
      context,
      listen: true,
    );

    return FutureBuilder(
      future: null,
      builder: (context, snapshot) {
        if (userController.currentUser.uid == null) {
          authStutas = AuthStutas.notloggedIn;
        }
        if (userController.currentUser.uid != null) {
          if (userController.currentUser.displayName == null) {
            authStutas = AuthStutas.noProfile;
          }
          if (userController.currentUser.displayName != null &&
              userController.currentUser.frienduid == null) {
            authStutas = AuthStutas.noFriend;
          }
          if (userController.currentUser.displayName != null &&
              userController.currentUser.frienduid != null) {
            authStutas = AuthStutas.loggedInHome;
          }
        }

        switch (authStutas) {
          case AuthStutas.authenticating:
            return SplashAnimation();
          case AuthStutas.noProfile:
            return ProfileSetup();
          case AuthStutas.noFriend:
            return InviteFriend();
          case AuthStutas.notloggedIn:
            return Login();
          case AuthStutas.loggedInHome:
            return Homepage();
          case AuthStutas.firstTime:
            return Container();
          default:
            return Login();
        }
      },
    );
  }
}
