import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tyamo/controller/usercontroller/user_controller.dart';

class RegisterServices {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  UserController currentUser = UserController();
}
