import 'package:flutter/material.dart';
import 'package:music_app/common/color_extension.dart';

class PlayListCell extends StatelessWidget {
  final Map mObj;
  const PlayListCell({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(
              mObj['image'],
              width: double.maxFinite,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            mObj['name'],
            maxLines: 1,
            style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 13,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            mObj['artists'],
            maxLines: 1,
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 10,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
