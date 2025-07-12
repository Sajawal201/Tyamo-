import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyamo/Views/Root/root.dart';
import 'package:tyamo/Views/Widgets/Auth/splash_loader_animation.dart';
import 'package:tyamo/controller/usercontroller/user_controller.dart';

class Splash extends StatelessWidget {
  UserController userController = UserController();

  @override
  Widget build(BuildContext context) {
    userController = Provider.of<UserController>(context, listen: false);

    if (userController.currentUser.uid == null) {
      return FutureBuilder(
        future: userController.checkUserSigninInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Root();
          } else {
            return SplashAnimation();
          }
        },
      );
    } else {
      return Root();
    }
  }
}
