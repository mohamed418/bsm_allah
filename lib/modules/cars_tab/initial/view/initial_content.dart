import 'package:bsm_allah/modules/cars_tab/initial/view/widgets/popular_companies.dart';
import 'package:bsm_allah/modules/cars_tab/initial/view/widgets/services_widget.dart';
import 'package:flutter/cupertino.dart';

class InitialContent extends StatelessWidget {
  const InitialContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ServicesWidget(),
        PopularCompanies(),
      ],
    );
  }
}
