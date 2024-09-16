import 'package:flutter/material.dart';
import 'package:spotifyuitask/Homepage/Components/headerrow.dart';
import 'package:spotifyuitask/Homepage/Components/recent.dart';
import 'package:spotifyuitask/Homepage/Components/recommended.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: backgroundColor(),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: const [
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                HeaderRow(),
                Recent(),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Recommended for Today', 
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Recommended(
                  url: 
                    'https://m.media-amazon.com/images/I/61DqhkepOxL._AC_UF1000,1000_QL80_.jpg',
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Recently Played', 
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Recommended(
                  url: 
                    'https://m.media-amazon.com/images/I/61DqhkepOxL._AC_UF1000,1000_QL80_.jpg',
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Also Listen to', 
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Recommended(
                  url: 
                    'https://m.media-amazon.com/images/I/61DqhkepOxL._AC_UF1000,1000_QL80_.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration backgroundColor() {
    return const BoxDecoration(
        gradient: LinearGradient(colors: [
         Colors.purple,
         Colors.black,
         Colors.black
        ], begin:Alignment.topCenter,
        ),
      );
  }
}