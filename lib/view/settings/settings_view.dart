import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/common/color_extension.dart';
import 'package:music_app/view_model/splash_view_model.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
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
              "Settings",
              style: TextStyle(
                color: TColor.primaryText80,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: const [
        ListTile(
          title: Text("All Settings"),
        )
      ],),
    );
  }
}
