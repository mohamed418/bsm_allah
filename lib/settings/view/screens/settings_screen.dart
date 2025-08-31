import 'package:bsm_allah/settings/view/widgets/setting_box.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(18, 19, 21, 1),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            // Expanded(
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 30,
            //     itemBuilder: (context, index) => Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Container(
            //         color: Colors.red,
            //         height: 10,
            //         width: 50,
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 700,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) => Container(
                  color: Colors.grey.shade300,
                  height: 20,
                  width: 20,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/airpods.png',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      buildFlightInfo(
                        title: "Saudi Flight",
                        subTitle: "CAI - ASW with Nile Air",
                        type: 'Direct',
                      ),
                      SizedBox(height: 10),
                      buildFlightInfo(
                        title: "Egypt Flight",
                        subTitle: "CAI - ASW with Nile Air",
                        type: 'Transite',
                      ),
                    ],
                  ),
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildFlightInfo({
    required String title,
    required String subTitle,
    required String type,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LOGO
          Image.asset(
            'assets/images/test.jpeg',
            height: 30,
            width: 30,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          // Title and SubTitle
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Text(
                subTitle,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          // Flight Type
          Text(
            type,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
