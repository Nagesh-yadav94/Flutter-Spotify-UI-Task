import 'package:flutter/material.dart';

class SearchCards extends StatelessWidget {
  const SearchCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardGenre(),
            CardGenre1(),
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardGenre(),
            CardGenre1(),
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardGenre(),
            CardGenre1(),
          ],
        ),
      ],
    );
  }
}

class CardGenre extends StatelessWidget {
  const CardGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 150,
        height: 100,
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text(
                  'Tamil',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Transform.rotate(
            angle: 0.5, 
            child: const Image(
              image: NetworkImage('https://m.media-amazon.com/images/I/61DqhkepOxL._AC_UF1000,1000_QL80_.jpg'),
              width: 70.0,
              height: 60.0,
            ),
          ),
          ],
        ),
      )
    );
  }
}

class CardGenre1 extends StatelessWidget {
  const CardGenre1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 150,
        height: 100,
        color: Colors.lime,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text(
                  'English',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Transform.rotate(
            angle: 0.5, 
            child: const Image(
              image: NetworkImage('https://m.media-amazon.com/images/I/61DqhkepOxL._AC_UF1000,1000_QL80_.jpg'),
              width: 70.0,
              height: 60.0,
            ),
          ),
          ],
        ),
      )
    );
  }
}