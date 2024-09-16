import 'package:flutter/material.dart';
import 'package:spotifyuitask/Library/Components/common.dart';
import 'package:spotifyuitask/Library/Components/playlist.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40), 
          child: AppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: const TabBar(
                    tabs: [
                    Text(
                      'Playlists',
                    ),
                    Text(
                      'Artists',
                    ),
                    Text(
                      'Albums',
                    ),
                  
                  ],),
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          PlayList(),
          Common(),
          Common(),
        ],),
      ),
    );
  }
}