import 'package:flutter/material.dart';
import 'package:spotifyuitask/Library/Components/common.dart';

class Podcasts extends StatefulWidget {
  const Podcasts({super.key});

  @override
  State<Podcasts> createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
  @override
  Widget build(BuildContext context) {// bloc statements managements uisng except equitable 4
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
          Common(),
          Common(),
          Common(),
        ],),
      ),
    );
  }
}