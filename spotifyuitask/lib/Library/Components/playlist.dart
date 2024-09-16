import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            leading: Image(
              image: NetworkImage('https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8470d229cb865e8d81cdce0889'),
            ),
            title: Text(
              'Liked Songs'
            ),
            subtitle: Text(
              '1432 songs'
            ),
          ),
           ListTile(
            leading: Image(
              image: NetworkImage('https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8470d229cb865e8d81cdce0889'),
            ),
            title: Text(
              'Liked Songs'
            ),
            subtitle: Text(
              '1432 songs'
            ),
          ),
           ListTile(
            leading: Image(
              image: NetworkImage('https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8470d229cb865e8d81cdce0889'),
            ),
            title: Text(
              'Liked Songs'
            ),
            subtitle: Text(
              '1432 songs'
            ),
          ),
           ListTile(
            leading: Image(
              image: NetworkImage('https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8470d229cb865e8d81cdce0889'),
            ),
            title: Text(
              'Liked Songs'
            ),
            subtitle: Text(
              '1432 songs'
            ),
          ),
           ListTile(
            leading: Image(
              image: NetworkImage('https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8470d229cb865e8d81cdce0889'),
            ),
            title: Text(
              'Liked Songs'
            ),
            subtitle: Text(
              '1432 songs'
            ),
          ),
           ListTile(
            leading: Image(
              image: NetworkImage('https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8470d229cb865e8d81cdce0889'),
            ),
            title: Text(
              'Liked Songs'
            ),
            subtitle: Text(
              '1432 songs'
            ),
          ),
        ],
      ),
    );
  }
}