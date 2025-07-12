import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Auth/register.dart';
import 'package:tyamo/Views/Homepage/homepage.dart';
import 'package:tyamo/Views/Widgets/Auth/splash.dart';
import 'package:tyamo/Views/Widgets/Auth/splash_loader_animation.dart';
import 'package:tyamo/Views/features/Album/album_main.dart';
import 'package:tyamo/Views/features/Album/album_new_post.dart';
import 'package:tyamo/Views/features/Album/album_post.dart';
import 'package:tyamo/Views/features/deviceinfo/Batteryinfo/battery_info.dart';
import 'package:tyamo/Views/features/deviceinfo/DeviceSpece/device_spece.dart';
import 'package:tyamo/Views/features/deviceinfo/Generalinfo/general_info.dart';
import 'package:tyamo/Views/features/deviceinfo/Locationinfo/location_info.dart';
import 'package:tyamo/Views/features/deviceinfo/UserStutas/user_status.dart';
import 'package:tyamo/Views/features/deviceinfo/device_info.dart';
import 'package:tyamo/Views/profile/profile_setting.dart';
import 'package:tyamo/controller/usercontroller/user_controller.dart';
import 'package:tyamo/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserController())],
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Tyamo',
            home: Splash(),
          );
        },
      ),
    );
  }
}
