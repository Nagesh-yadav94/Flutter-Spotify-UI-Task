import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardRow(),
        CardRow(),
        CardRow(),
      ],
    );
  }
}

class CardRow extends StatelessWidget {
  const CardRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        cardsBuilds(
          'https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8470d229cb865e8d81cdce0889',
          'Liked Songs',
        ),
        cardsBuilds(
          'https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8470d229cb865e8d81cdce0889',
          'Liked Songs',
        ),
      ],
    );
  }
}

Card cardsBuilds(String img, String txt) {
  return  Card(
    color: const Color.fromRGBO(66, 66, 66, 1),
    child: SizedBox(
      width: 170,
      child: Row(children: [
        Image(
          width: 50,
          height: 50,
          image: NetworkImage(img),
        ),
        Padding(
          padding:const EdgeInsets.fromLTRB(
            10, 
            15, 
            20, 
            15,
          ),
          child: Text(txt),
        ),
      ],),
    ),
  );
}
