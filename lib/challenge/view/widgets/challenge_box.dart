import 'package:flutter/material.dart';

class ChallengeBox extends StatelessWidget {
  final String title;
  const ChallengeBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              child: Text('AI'),
            ),
            Text(
             title,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            Text(
              '1000 Members',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
