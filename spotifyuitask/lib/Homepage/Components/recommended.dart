import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
  final String url;
  const Recommended({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 190.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              RecommCard(url: url),
              const SizedBox(
                width: 12.0,
              )
            ],
          );
        },
      ),
    );
  }
}

class RecommCard extends StatelessWidget {
  final String url;
  const RecommCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: 130,
          height: 130,
          image: NetworkImage(
            url,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Kutty Pattas',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        const Text(
          'Single Santhosh',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}
