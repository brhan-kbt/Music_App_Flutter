import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/common/color_extension.dart';
import 'package:music_app/view/home/home_view.dart';
import 'package:music_app/view_model/splash_view_model.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<StatefulWidget> createState() => _MainTabView();
}

class _MainTabView extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTav = 0;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller?.addListener(() {
      selectTav = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    var splashVM = Get.find<SplashViewModel>();
    return Scaffold(
      key: splashVM.scaffoldKey,
      drawer: Drawer(
        width: media.width * 0.8,
        backgroundColor: const Color(0xff10121D),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 180,
              child: DrawerHeader(
                decoration:
                    BoxDecoration(color: TColor.primaryText.withOpacity(0.03)),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/img/app_logo.png",
                      width: media.width * 0.2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "328\n Songs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffC1C0C0), fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "52\n Albums",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffC1C0C0), fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "87\n Artists",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffC1C0C0), fontSize: 12),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_theme.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Themes",
                style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            // Divider(
            //   color: TColor.primaryText.withOpacity(0.09),
            //   indent: 20,
            //   endIndent: 20,
            // ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_ring_cut.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Ringtone Cutter",
                style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withOpacity(0.09),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_sleep_timer.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Sleep Timer",
                style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withOpacity(0.09),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_eq.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Equalizer",
                style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withOpacity(0.09),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_driver_mode.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Driver Mode",
                style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withOpacity(0.09),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_hidden_folder.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Hidden Folder",
                style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withOpacity(0.09),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_scan_media.png",
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Scan Media",
                style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withOpacity(0.09),
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          HomeView(),
          Container(
            child: Center(child: Text("Songs")),
          ),
          Container(
            child: Center(child: Text("Settings")),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: TColor.bg, boxShadow: const [
          BoxShadow(color: Colors.black38, blurRadius: 5, offset: Offset(0, -3))
        ]),
        child: BottomAppBar(
            color: Colors.transparent,
            elevation: 1,
            child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: TextStyle(
                fontSize: 10,
              ),
              unselectedLabelColor: TColor.primaryText28,
              unselectedLabelStyle: TextStyle(fontSize: 10),
              tabs: [
                Tab(
                  text: "Home",
                  icon: Image.asset(
                    selectTav == 0
                        ? "assets/img/home_tab.png"
                        : "assets/img/home_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Tab(
                  text: "Songs",
                  icon: Image.asset(
                    selectTav == 1
                        ? "assets/img/songs_tab.png"
                        : "assets/img/songs_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Tab(
                  text: "Settings",
                  icon: Image.asset(
                    selectTav == 2
                        ? "assets/img/setting_tab.png"
                        : "assets/img/setting_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
