import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_fade/image_fade.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/portfolio/about.dart';
import 'package:portfolio/portfolio/estonianHistory.dart';
import 'package:portfolio/portfolio/interests.dart';
import 'package:portfolio/portfolio/leftBar.dart';
import 'package:portfolio/portfolio/roler.dart';
import 'package:portfolio/portfolio/successFactors.dart';
import 'package:portfolio/widgets/floatingSheet.dart';
import 'package:portfolio/widgets/imageButton.dart';
import 'package:portfolio/widgets/myChip.dart';
import 'package:portfolio/widgets/screenshot.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx/webviewx.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'portfolio/header.dart';

class PortFolio extends StatefulWidget {
  PortFolio({Key? key}) : super(key: key);

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> with AnimationMixin {
  Size? textSize;

  late Animatable<Movie> hiTween;
  double leftPadding = 60;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    if (MediaQuery.of(context).size.width <= 800) {
      leftPadding = 0;
    } else {
      leftPadding = 60;
    }
    return Scaffold(
      backgroundColor: bg1,
      body: Stack(
        children: [
          SvgPicture.asset('assets/eesti.svg',
              color: Colors.black.withOpacity(0.02), height: 600),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width / 10) + leftPadding,
                  right: (MediaQuery.of(context).size.width / 10) + leftPadding,
                  top: (MediaQuery.of(context).size.width / 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  const SizedBox(height: 50),
                  const About(),
                  SizedBox(height: 50),
                  Interests(),
                  const SizedBox(height: 50),
                  SuccessFactors(),
                  SizedBox(height: 100),
                  EstonianHistory(),
                  SizedBox(height: 100),
                  Roler(),
                  SizedBox(height: 100),
                  if (MediaQuery.of(context).size.width <= 800)
                    LeftBar(
                      isHorizontal: true,
                    ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
          MediaQuery.of(context).size.width > 800 ? LeftBar() : const SizedBox()
        ],
      ),
    );
  }
}
