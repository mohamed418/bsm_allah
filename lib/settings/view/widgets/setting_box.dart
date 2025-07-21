import 'package:flutter/material.dart';

class SettingBox extends StatelessWidget {
  const SettingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      decoration: BoxDecoration(
          color: Color.fromRGBO(31, 31, 34, 1),
          borderRadius: BorderRadius.circular(60)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 51, 54, 1),
                  shape: BoxShape.circle,
                  border: Border.all(color: Color.fromRGBO(91, 91, 94, 1)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.light_mode_outlined, color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '200',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: ' KW/H',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Produced',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
