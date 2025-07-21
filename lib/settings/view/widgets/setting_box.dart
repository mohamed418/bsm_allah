import 'package:flutter/material.dart';

class SettingBox extends StatelessWidget {

  final IconData icon;
  final String label1;
  final String label2;
  final String label3;
  final String labelType;

  const SettingBox({super.key, required this.icon, required this.label1, required this.label2, required this.label3, required this.labelType});

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
                  child: Icon(icon, color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: label1,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: ' ${label2 + label3}',
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
              labelType,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
