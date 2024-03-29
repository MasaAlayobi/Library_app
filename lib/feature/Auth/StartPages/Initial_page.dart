import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novels_app/Core/Resourse/image_app.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: 428,
              height: 996,
                child: Center(child: SvgPicture.asset(appImage.SPLASH))),
          ),
        ],
      ),
    );
  }
}
