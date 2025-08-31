import 'package:flutter/cupertino.dart';
import 'initial/view/initial_content.dart';

class CarsTabContent extends StatelessWidget {
  const CarsTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InitialContent(),
      ],
    );
  }
}
