import 'package:flutter/material.dart';
import 'home_body_banner.dart';
import 'home_body_popular.dart';
import '../../size.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    print("bodyWidth: $bodyWidth");

    double screenSize = MediaQuery.of(context).size.width;

    return Align(
      child: SizedBox(
        width: screenSize < 420 ? double.infinity : bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
