import 'package:flutter/material.dart';

class HeaderRow extends StatefulWidget {
  const HeaderRow({super.key});

  @override
  State<HeaderRow> createState() => _HeaderRowState();
}

class _HeaderRowState extends State<HeaderRow> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(
        15.0, 
        20.0, 
        15.0, 
        15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Good Morning",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.settings,
          )
        ],
      ),
    );
  }
}