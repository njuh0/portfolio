import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_fade/image_fade.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/widgets/floatingSheet.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:simple_animations/simple_animations.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Size? textSize;

  late Animatable<Movie> hiTween;

  @override
  void initState() {
    hiTween = MovieTween()
      ..scene(
        begin: const Duration(seconds: 0),
        duration: const Duration(milliseconds: 200),
      )
          .tween('x', Tween<double>(begin: 0.0, end: 17.0),
              curve: Curves.linear)
          .thenFor(duration: const Duration(milliseconds: 500))
          .tween('x', Tween<double>(begin: 17.0, end: 0.0),
              curve: Curves.bounceOut);

    Future.delayed(Duration.zero, () {
      textSize = (TextPainter(
              text: TextSpan(
                text: 'Flutter',
                style: GoogleFonts.encodeSans(
                  textStyle: const TextStyle(
                    color: text3,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              maxLines: 1,
              textScaleFactor: MediaQuery.of(context).textScaleFactor,
              textDirection: TextDirection.ltr)
            ..layout())
          .size;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaQuery.of(context).size.width <= 1100
            ? Column(
                children: const [
                  ImageFade(
                    image: NetworkImage('https://i.imgur.com/uR9oxlz.png'),
                    duration: const Duration(milliseconds: 200),
                    syncDuration: const Duration(milliseconds: 200),
                    height: 300,
                  ),
                  SizedBox(height: 20)
                ],
              )
            : const SizedBox(),
        Row(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                  child: SvgPicture.asset('assets/qr.svg',
                                      width: MediaQuery.of(context).size.width /
                                          3),
                                );
                              });
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: SvgPicture.asset('assets/qr.svg', height: 66),
                        ),
                      ),
                      Row(
                        children: [
                          PlayAnimationBuilder<Movie>(
                            tween: hiTween,
                            delay: const Duration(milliseconds: 5000),
                            duration: const Duration(milliseconds: 700),
                            builder: (context, value, _) {
                              return SizedBox(
                                width: value.get('x'),
                              );
                            },
                          ),
                          Text(
                            'Say hi!',
                            style: GoogleFonts.encodeSans(
                              textStyle: TextStyle(
                                  color: text2,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, my name is',
                          style: GoogleFonts.encodeSans(
                            textStyle: TextStyle(
                                color: text1, letterSpacing: 2, fontSize: 20),
                          ),
                        ),
                        Text(
                          'Edgar Vasli.',
                          style: GoogleFonts.encodeSans(
                            textStyle: TextStyle(
                              color: text2,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Wrap(children: [
                          Text(
                            'I build things with ',
                            style: GoogleFonts.encodeSans(
                              textStyle: TextStyle(
                                color: text3,
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Stack(children: [
                            Positioned(
                              top: 28,
                              // left: 30,
                              child: Container(
                                height: 5,
                                width: textSize == null ? 0 : textSize!.width,
                                color: Colors.yellowAccent,
                              ),
                            ),
                            Text(
                              'Flutter',
                              style: GoogleFonts.encodeSans(
                                textStyle: TextStyle(
                                  color: text3,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ]),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MediaQuery.of(context).size.width > 1100
                ? const ImageFade(
                    image: NetworkImage('https://i.imgur.com/uR9oxlz.png'),
                    duration: Duration(milliseconds: 200),
                    syncDuration: Duration(milliseconds: 200),
                    height: 300,
                  )
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
