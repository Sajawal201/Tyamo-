import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tyamo/Views/features/Album/friend_album.dart';
import 'package:tyamo/Views/features/Album/my_album.dart';

class AlbumMain extends StatefulWidget {
  const AlbumMain({super.key});

  @override
  State<AlbumMain> createState() => _AlbumMainState();
}

class _AlbumMainState extends State<AlbumMain>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curve;

  List<IconData> iconList = [Icons.person_outline, Icons.people_outline];

  int page = 0;
  int pageView = 0;
  PageController pageController = PageController(initialPage: 0);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },

      children: [MyAlbum(), FriendAlbum()],
    );
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    curve = CurvedAnimation(
      parent: animationController,
      curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(curve);

    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/logo.png',
            filterQuality: FilterQuality.high,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          splashColor: Color(0xfffFA400),
          elevation: 10,
          backgroundColor: Color(0xFFF9990F),
          child: Icon(Icons.add, color: Color(0xFF373A36)),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: page,
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.none,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (p0) {
          setState(() {
            pageView = p0;
            pageController.animateToPage(
              p0,
              duration: Duration(microseconds: 200),
              curve: Curves.linear,
            );
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}
