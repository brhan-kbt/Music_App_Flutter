import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/audio_helpers/page_manager.dart';
import 'package:music_app/audio_helpers/service_locator.dart';
import 'package:music_app/common/color_extension.dart';
import 'package:music_app/view/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getIt<PageManager>().init();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    getIt<PageManager>().dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Music App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Circular Std",
            scaffoldBackgroundColor: TColor.bg,
            textTheme: Theme.of(context).textTheme.apply(
                bodyColor: TColor.primaryText,
                displayColor: TColor.primaryText),
            colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
            useMaterial3: false),
        home: const SplashView());
  }
}
