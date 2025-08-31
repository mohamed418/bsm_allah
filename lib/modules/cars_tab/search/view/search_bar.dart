import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => Container(
            color: Colors.red,
            height: 20,
            width: 20,
          ),
        ),
        GridView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => Container(
            color: Colors.green,
            height: 20,
            width: 20,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1 / 1,
          ),
        ),
      ],
    );
  }
}
