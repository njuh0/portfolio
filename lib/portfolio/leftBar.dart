import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/widgets/imageButton.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:url_launcher/url_launcher.dart';

class LeftBar extends StatefulWidget {
  bool? isHorizontal;
  LeftBar({bool? isHorizontal, Key? key})
      : isHorizontal = isHorizontal ?? false,
        super(key: key);

  @override
  State<LeftBar> createState() => _LeftBarState();
}

class _LeftBarState extends State<LeftBar> with AnimationMixin {
  late AnimationController sizeController;
  late Animation<double> size;

  @override
  void initState() {
    sizeController = createController(); // create custom AnimationController
    size = Tween<double>(begin: 30, end: 40).animate(sizeController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isHorizontal!) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageButton(
            url: 'assets/github.svg',
            onClick: () {
              launchUrl(Uri.parse('https://github.com/njuh0'));
            },
          ),
          const SizedBox(width: 30),
          ImageButton(
            url: 'assets/googlePlay.svg',
            onClick: () {
              launchUrl(Uri.parse(
                  'https://play.google.com/store/apps/developer?id=Njuh'));
            },
          ),
          const SizedBox(width: 30),
          ImageButton(
            icon: Icons.telegram,
            onClick: () {
              launchUrl(Uri.parse('https://t.me/njuh0'));
            },
          ),
          const SizedBox(width: 30),
          ImageButton(
            icon: Icons.mail,
            onClick: () {
              launchUrl(Uri.parse('mailto:njuhdev@gmail.com'));
            },
          ),
        ],
      );
    } else {
      return Positioned(
        bottom: 0,
        left: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImageButton(
              url: 'assets/github.svg',
              onClick: () {
                launchUrl(Uri.parse('https://github.com/njuh0'));
              },
            ),
            const SizedBox(height: 30),
            ImageButton(
              url: 'assets/googlePlay.svg',
              onClick: () {
                launchUrl(Uri.parse(
                    'https://play.google.com/store/apps/developer?id=Njuh'));
              },
            ),
            const SizedBox(height: 30),
            ImageButton(
              icon: Icons.telegram,
              onClick: () {
                launchUrl(Uri.parse('https://t.me/njuh0'));
              },
            ),
            const SizedBox(height: 30),
            ImageButton(
              icon: Icons.mail,
              onClick: () {
                launchUrl(Uri.parse('mailto:njuhdev@gmail.com'));
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      );
    }
  }
}
