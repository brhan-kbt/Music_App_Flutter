import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/common/color_extension.dart';
import 'package:music_app/common_widget/my_playlist_cell.dart';
import 'package:music_app/common_widget/playlist_songs_cell.dart';
import 'package:music_app/common_widget/view_all_section.dart';
import 'package:music_app/view_model/playlists_view_model.dart';

class PlaylistsView extends StatefulWidget {
  const PlaylistsView({super.key});

  @override
  State<PlaylistsView> createState() => _PlaylistsViewState();
}

class _PlaylistsViewState extends State<PlaylistsView> {

  final plM =Get.put(PlaylistsViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      mini: true,
        backgroundColor: const Color(0xff23273B),
       child: Center(child: Icon(Icons.add, color: Colors.amber,)),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Obx(()=> GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 20),
              gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.4, crossAxisSpacing: 0, mainAxisSpacing: 0)
            ,
            itemCount: plM.playlistArr.length,
            itemBuilder: (context, index){
              var pObj = plM.playlistArr[index];
              return PlaylistSongsCell(pObj: pObj, onPressed: (){}, onPressedPlay: (){});

            },),),



            ViewAllSection(title: "My Playlists", onPressed: (){}),
            SizedBox(height: 150,
             child: Obx(()=>ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: plM.myPlaylistArr.length,
              itemBuilder: (context, index){
                var pObj = plM.myPlaylistArr[index];

                return MyPlaylistCell(pObj: pObj, onPressed: (){},);
            },),),
            ),
          ],
        ),
      ),
    );
  }
}