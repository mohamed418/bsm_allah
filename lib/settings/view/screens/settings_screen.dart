import 'package:bsm_allah/settings/view/widgets/setting_box.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 19, 21, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                  child: SettingBox(
                icon: Icons.light_mode_outlined,
                label1: '200',
                label2: 'KW/',
                label3: 'H',
                labelType: 'Produced',
              )),
              SizedBox(width: 10),
              Expanded(
                child: SettingBox(
                  icon: Icons.flash_on_outlined,
                  label1: '120',
                  label2: 'KW/',
                  label3: 'H',
                  labelType: 'Exported',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
