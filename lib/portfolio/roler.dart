import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/widgets/imageButton.dart';
import 'package:portfolio/widgets/myChip.dart';
import 'package:portfolio/widgets/screenshot.dart';
import 'package:url_launcher/url_launcher.dart';

class Roler extends StatefulWidget {
  Roler({Key? key}) : super(key: key);

  @override
  State<Roler> createState() => _RolerState();
}

class _RolerState extends State<Roler> {
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
                    color: bg1),
                child: Image.asset(
                  'assets/roler.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 30),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Roler',
                            style: GoogleFonts.encodeSans(
                              textStyle: TextStyle(
                                color: text3,
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Text(
                            'Collection of role-play stories. Fantastic character description generator. Search for role-play players.',
                            style: GoogleFonts.encodeSans(
                              textStyle: const TextStyle(
                                color: text1,
                                fontSize: 20,
                                // fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    ImageButton(
                      url: 'assets/googlePlay.svg',
                      onClick: () {
                        launchUrl(Uri.parse(
                            'https://play.google.com/store/apps/details?id=ee.Njuh.japan.story3'));
                      },
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
                    color: bg1),
                child: Image.asset(
                  'assets/roler.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Roler',
                    style: GoogleFonts.encodeSans(
                      textStyle: TextStyle(
                        color: text3,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    'Collection of role-play stories. Fantasty character description generator. Search for role-play players.',
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
                        url: 'assets/googlePlay.svg',
                        onClick: () {
                          launchUrl(Uri.parse(
                              'https://play.google.com/store/apps/details?id=ee.Njuh.japan.story3'));
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
            Screenshot(imagePath: 'https://i.imgur.com/HXe0ayI.jpg'),
            const SizedBox(width: 30),
            Screenshot(imagePath: 'https://i.imgur.com/Gz5Zk8X.jpg'),
            const SizedBox(width: 30),
            Screenshot(imagePath: 'https://i.imgur.com/jyplKM9.jpg'),
            const SizedBox(width: 30),
            Screenshot(imagePath: 'https://i.imgur.com/bY7d5iz.jpg'),
            const SizedBox(width: 30),
            if (MediaQuery.of(context).size.width > 1373.0)
              Screenshot(imagePath: 'https://i.imgur.com/87WYUjN.jpg'),
          ],
        ),
        SizedBox(height: 30),
        Wrap(
          children: [
            MyChip(text: 'Firebase'),
            MyChip(text: 'PHP'),
            MyChip(text: 'MySQL'),
            MyChip(text: 'AdMob'),
            MyChip(text: 'Provider'),
            MyChip(text: 'Figma'),
          ],
        ),
      ],
    );
  }
}
