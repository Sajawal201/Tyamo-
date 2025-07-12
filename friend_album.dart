import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:tyamo/Views/Widgets/Album/gallery_header.dart';

class FriendAlbum extends StatelessWidget {
  const FriendAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(
            context: context,
            isEditable: false,
            toVal: "0",
            tuVal: "0",
            name: "Friend",
            description: "Tell your partner what this album mean to you!",
          ),
          Container(
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: 2,
              crossAxisCount: 4,
              itemBuilder: (context, index) {
                return FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * 0.50,
                  blurSize: 2.0,
                  menuItemExtent: 45,
                  menuBoxDecoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  duration: Duration(microseconds: 100),
                  animateMenuItems: true,
                  blurBackgroundColor: Colors.black54,
                  menuOffset: 10.0,
                  bottomOffsetHeight: 80.0,
                  menuItems: <FocusedMenuItem>[
                    FocusedMenuItem(
                      title: const Text("Open"),
                      trailingIcon: Icon(Icons.open_in_new),
                      onPressed: () {},
                    ),
                    FocusedMenuItem(
                      backgroundColor: Colors.red,
                      title: Text(
                        "Delete",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Nunito",
                        ),
                      ),
                      trailingIcon: Icon(Icons.delete, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Hero(
                        tag: "sky_image_tag",
                        child: Image.network(
                          "https://i.ytimg.com/vi/9cG8zhw5BVs/maxresdefault.jpg", // ✅ Replace with a direct image link
                          fit: BoxFit.cover,
                          height: 200,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                );
              },
              staggeredTileBuilder:
                  (int index) =>
                      new StaggeredTile.count(2, index.isEven ? 2 : 3),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
