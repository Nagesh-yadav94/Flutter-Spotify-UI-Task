import 'package:flutter/material.dart';
import 'package:spotifyuitask/Library/Components/music.dart';
import 'package:spotifyuitask/Library/Components/podcasts.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  final TextStyle _style = const TextStyle(
    fontSize: 30.0, 
    
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight), 
          child: AppBar(
            bottom: TabBar(tabs: [
              Text(
                'Music',
                style: _style,
              ),
               Text(
                'Podcasts',
                style: _style,
              ),
            ],
          ),
          )
        ),
        body: const TabBarView(children: [
          Music(),
          Podcasts(),
        ],),
      ),
    );
  }
}