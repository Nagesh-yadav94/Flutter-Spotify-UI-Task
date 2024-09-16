import 'package:flutter/material.dart';
import 'package:spotifyuitask/Search/Components/searchbox.dart';
import 'package:spotifyuitask/Search/Components/searchcards.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.black,
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                SearchBox(),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Your top genres',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SearchCards(),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Browser all',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SearchCards(),
                SearchCards(),
              ],
            ),
          ),
        )
      ],
    );
  }
}