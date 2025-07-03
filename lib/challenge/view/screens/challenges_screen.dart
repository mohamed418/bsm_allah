import 'package:flutter/material.dart';
import '../../view_model/models/challenges_model.dart';
import '../widgets/challenge_box.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1 / 1,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return ChallengeBox(title: challengesName[index]);
          },
        ),
      ),
    );
  }
}
