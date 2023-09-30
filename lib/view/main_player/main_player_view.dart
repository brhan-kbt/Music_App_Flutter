import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/common/color_extension.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class MainPlayerView extends StatefulWidget {
  const MainPlayerView({super.key});

  @override
  State<MainPlayerView> createState() => _MainPlayerViewState();
}

class _MainPlayerViewState extends State<MainPlayerView> {
  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset(
            "assets/img/back.png",
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Now Playing",
          style: TextStyle(
              color: TColor.primaryText80,
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Image.asset(
              "assets/img/more_btn.png",
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: TColor.primaryText80,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
              Stack(
                children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(media.width*0.7) ,
                  child: Image.asset("assets/img/player_image.png", 
                  width: media.width*0.7,
                  height: media.width*0.7,
                  fit:BoxFit.cover
                  ),
                ),
                SleekCircularSlider(
                min: 0,
                max: 100,
                initialValue: 60,
                onChange: (double value) {
                  // callback providing a value while its being changed (with a pan gesture)
                },
                onChangeStart: (double startValue) {
                  // callback providing a starting value (when a pan gesture starts)
                },
                onChangeEnd: (double endValue) {
                  // ucallback providing an ending value (when a pan gesture ends)
                },
               
              )
              ],),

              Row(children: [
                
              ],)
          ],
        )
      ),
    );
  }
}