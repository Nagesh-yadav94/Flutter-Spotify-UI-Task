import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.0,
      color: Colors.white,
      child: const Row(
        children: [
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Artists, Songs, or Podcasts',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}