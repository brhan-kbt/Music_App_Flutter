import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:music_app/common/color_extension.dart';

class SongsRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;
  const SongsRow(
      {super.key,
      required this.sObj,
      required this.onPressed,
      required this.onPressedPlay});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onPressedPlay,
              icon: Image.asset(
                "assets/img/play_btn.png",
                width: 20,
                height: 20,
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sObj['name'],
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
                  sObj['artists'],
                  maxLines: 1,
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 10,
                  ),
                ),
              ],
            )),
            Column(
              children: [
                Image.asset(
                  "assets/img/fav.png",
                  width: 12,
                  height: 12,
                ),
                const SizedBox(
                  height: 3,
                ),
                IgnorePointer(
                  ignoring: true,
                  child: RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    unratedColor: TColor.org.withOpacity(0.2),
                    itemPadding: EdgeInsets.zero,
                    itemSize: 12,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: TColor.org,
                    ),
                    updateOnDrag: false,
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                )
              ],
            )
          ],
        ),
        Divider(
          color: Colors.white.withOpacity(0.09),
          indent: 50,
        )
      ],
    );
  }
}
