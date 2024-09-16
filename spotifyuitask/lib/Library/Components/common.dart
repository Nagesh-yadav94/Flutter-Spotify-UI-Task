import 'package:flutter/material.dart';

class Common extends StatelessWidget {
  const Common({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Looking for a show to listen?',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white

            ),
            onPressed: () {}, 
            child: const Text(
              'Browser',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ), 
            ),
          )
        ],
      ),
    );
  }
}