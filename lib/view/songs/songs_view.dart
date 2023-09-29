import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/common/color_extension.dart';
import 'package:music_app/view_model/splash_view_model.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});

  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        automaticallyImplyLeading:
            false, // Add this line to remove the back button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Get.find<SplashViewModel>().openDrawer();
              },
              icon: Image.asset(
                "assets/img/menu.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "Songs",
              style: TextStyle(
                color: TColor.primaryText80,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
              onPressed: () {
                Get.find<SplashViewModel>().openDrawer();
              },
              icon: Image.asset(
                "assets/img/search.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
                color: TColor.primaryText35,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: TabBar(
              indicatorColor: TColor.focus,
              isScrollable: true,
              controller: controller,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              labelStyle: TextStyle(
                color: TColor.primary,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                color: TColor.primaryText80,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              tabs: const [
                Tab(
                  height: 20,
                  text: 'All Songs',
                ),
                Tab(
                  height: 20,
                  text: 'Playlists',
                ),
                Tab(
                  height: 20,
                  text: 'Albums',
                ),
                Tab(
                  height: 20,
                  text: 'Artists',
                ),
                Tab(
                  height: 20,
                  text: 'Genres',
                ),
              ],
            ),
          ),
          Expanded(
              child: TabBarView(controller: controller, children: const [
            Center(
              child: Text("All Songs"),
            ),
            Center(
              child: Text("Playlists"),
            ),
            Center(
              child: Text("Albums"),
            ),
            Center(
              child: Text("Artists"),
            ),
            Center(
              child: Text("Genres"),
            ),
          ]))
        ],
      ),
    );
  }
}
