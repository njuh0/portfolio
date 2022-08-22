import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/consts.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:portfolio/widgets/floatingSheet.dart';
import 'package:portfolio/widgets/imageButton.dart';
import 'package:portfolio/widgets/myChip.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx/webviewx.dart';

class SuccessFactors extends StatefulWidget {
  SuccessFactors({Key? key}) : super(key: key);

  @override
  State<SuccessFactors> createState() => _SuccessFactorsState();
}

class _SuccessFactorsState extends State<SuccessFactors> {
  late WebViewXController webviewController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: GoogleFonts.encodeSans(
            textStyle: const TextStyle(
              color: text2,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 20),
        if (MediaQuery.of(context).size.width >= 700)
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
                child: SvgPicture.asset(
                  'assets/success_factors.svg',
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
                      'Success factors',
                      style: GoogleFonts.encodeSans(
                        textStyle: TextStyle(
                          color: text3,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      'I was inspired to create that after reading another book about self-development. It would seem that this is an ordinary application about goals. But the whole point of the application is to estimate the probability of success of the goal and analyze the result.',
                      style: GoogleFonts.encodeSans(
                        textStyle: const TextStyle(
                          color: text1,
                          fontSize: 20,
                          // fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30),
            ],
          ),
        if (MediaQuery.of(context).size.width < 700)
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
                child: SvgPicture.asset(
                  'assets/success_factors.svg',
                  height: 150,
                  width: 150,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Success factors',
                    style: GoogleFonts.encodeSans(
                      textStyle: TextStyle(
                        color: text3,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    'I was inspired to create that after reading another book about self-development. It would seem that this is an ordinary application about goals. But the whole point of the application is to estimate the probability of success of the goal and analyze the result.',
                    style: GoogleFonts.encodeSans(
                      textStyle: const TextStyle(
                        color: text1,
                        fontSize: 20,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (MediaQuery.of(context).size.width >= 538)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    kIsWeb
                        ? Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.flat,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(10)),
                                depth: 5,
                                lightSource: LightSource.topRight,
                                color: bg1),
                            child: WebViewX(
                              height: 700,
                              width: 400,
                              initialContent: 'https://test.nani.ee/flutter',
                              initialSourceType: SourceType.url,
                              onWebViewCreated: (controller) =>
                                  webviewController = controller,
                            ),
                          )
                        : Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.flat,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(10)),
                                depth: 5,
                                lightSource: LightSource.topRight,
                                color: bg1),
                            child: Container(
                              height: 700,
                              width: 400,
                              color: bg1,
                            ),
                          ),
                  ],
                ),
              SizedBox(width: 30),
              if (MediaQuery.of(context).size.width >= 875)
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  showFloatingBottomSheet(
                                      backgroundColor: bg1,
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(20),
                                          child: SvgPicture.asset(
                                              'assets/qrSuccess.svg',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3),
                                        );
                                      });
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: SvgPicture.asset(
                                      'assets/qrSuccess.svg',
                                      height: 150),
                                ),
                              ),
                              const SizedBox(height: 30),
                              MyChip(text: 'Figma'),
                              MyChip(text: 'Rive'),
                              MyChip(text: 'Provider'),
                              MyChip(text: 'Hive'),
                            ],
                          ),
                          ImageButton(
                            url: 'assets/github.svg',
                            onClick: () {
                              launchUrl(Uri.parse(
                                  'https://github.com/njuh0/success_factors'));
                            },
                          ),
                        ],
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              // Flexible(
              //   child: Text(
              //     'I used Figma for app icon, Provider for statemanagment, Hive as a database. The animations are not made by me, I have only edited them a bit with Rive. ',
              //     style: GoogleFonts.encodeSans(
              //       textStyle: const TextStyle(
              //         color: text1,
              //         fontSize: 20,
              //         // fontWeight: FontWeight.w700,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        if (MediaQuery.of(context).size.width < 875)
          Column(
            children: [
              SizedBox(height: 30),
              Wrap(
                children: [
                  MyChip(text: 'Figma'),
                  MyChip(text: 'Rive'),
                  MyChip(text: 'Provider'),
                  MyChip(text: 'Hive'),
                ],
              ),
              SizedBox(height: 10),
              ImageButton(
                url: 'assets/github.svg',
                onClick: () {
                  launchUrl(
                      Uri.parse('https://github.com/njuh0/success_factors'));
                },
              ),
            ],
          ),
      ],
    );
  }
}
