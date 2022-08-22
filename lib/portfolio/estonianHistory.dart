import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/widgets/imageButton.dart';
import 'package:portfolio/widgets/screenshot.dart';
import 'package:url_launcher/url_launcher.dart';

class EstonianHistory extends StatefulWidget {
  EstonianHistory({Key? key}) : super(key: key);

  @override
  State<EstonianHistory> createState() => _EstonianHistoryState();
}

class _EstonianHistoryState extends State<EstonianHistory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (MediaQuery.of(context).size.width >= 565.0)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                    depth: 0,
                    lightSource: LightSource.topRight,
                    color: Colors.transparent),
                child: Image.asset(
                  'assets/estonian_history.png',
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(width: 30),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Eesti Ajalugu',
                      style: GoogleFonts.encodeSans(
                        textStyle: TextStyle(
                          color: text3,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      'Estonian history inside a scrollable timeline. Background animates while scrolling. My very first Flutter app. ',
                      style: GoogleFonts.encodeSans(
                        textStyle: const TextStyle(
                          color: text1,
                          fontSize: 20,
                          // fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        ImageButton(
                          url: 'assets/github.svg',
                          onClick: () {
                            launchUrl(Uri.parse(
                                'https://github.com/njuh0/success_factors'));
                          },
                        ),
                        SizedBox(width: 30),
                        ImageButton(
                          url: 'assets/googlePlay.svg',
                          onClick: () {
                            launchUrl(Uri.parse(
                                'https://play.google.com/store/apps/details?id=ee.njuh.estonian_history'));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(width: 30),
            ],
          ),
        if (MediaQuery.of(context).size.width < 565.0)
          Wrap(
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                    depth: 0,
                    lightSource: LightSource.topRight,
                    color: Colors.transparent),
                child: Image.asset(
                  'assets/estonian_history.png',
                  height: 150,
                  width: 150,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Eesti Ajalugu',
                    style: GoogleFonts.encodeSans(
                      textStyle: TextStyle(
                        color: text3,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    'Estonian history inside a scrollable timeline. Background animates while scrolling. My very first Flutter app. ',
                    style: GoogleFonts.encodeSans(
                      textStyle: const TextStyle(
                        color: text1,
                        fontSize: 20,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      ImageButton(
                        url: 'assets/github.svg',
                        onClick: () {
                          launchUrl(Uri.parse(
                              'https://github.com/njuh0/estonian_history'));
                        },
                      ),
                      SizedBox(width: 30),
                      ImageButton(
                        url: 'assets/googlePlay.svg',
                        onClick: () {
                          launchUrl(Uri.parse(
                              'https://play.google.com/store/apps/details?id=ee.njuh.estonian_history'));
                        },
                      ),
                    ],
                  ),
                ],
              ),
              // SizedBox(width: 30),
            ],
          ),
        SizedBox(height: 50),
        Wrap(
          runSpacing: 30,
          children: [
            Screenshot(imagePath: 'https://i.imgur.com/7ew2G7P.png'),
            const SizedBox(width: 30),
            Screenshot(imagePath: 'https://i.imgur.com/QFX0wO4.png'),
            const SizedBox(width: 30),
            Screenshot(imagePath: 'https://i.imgur.com/87JIGJK.png'),
            const SizedBox(width: 30),
            Screenshot(imagePath: 'https://i.imgur.com/sKYik36.png'),
            const SizedBox(width: 30),
            if (MediaQuery.of(context).size.width > 1373.0)
              Screenshot(imagePath: 'https://i.imgur.com/1BnttIg.png'),
          ],
        ),
      ],
    );
  }
}
