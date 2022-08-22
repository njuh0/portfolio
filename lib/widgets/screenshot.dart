import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_fade/image_fade.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/widgets/floatingSheet.dart';

class Screenshot extends StatefulWidget {
  String imagePath;
  Screenshot({required this.imagePath, Key? key}) : super(key: key);

  @override
  State<Screenshot> createState() => _ScreenshotState();
}

class _ScreenshotState extends State<Screenshot> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        showFloatingBottomSheet(
            backgroundColor: bg1,
            context: context,
            isImage: true,
            builder: (context) {
              return Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageFade(
                    image: NetworkImage(widget.imagePath),
                    duration: const Duration(milliseconds: 200),
                    syncDuration: const Duration(milliseconds: 200),
                  ),
                ),
              );
            });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              depth: 0,
              lightSource: LightSource.topRight,
              color: bg1),
          child: ImageFade(
            image: NetworkImage(widget.imagePath),
            duration: const Duration(milliseconds: 200),
            syncDuration: const Duration(milliseconds: 200),
            width: MediaQuery.of(context).size.width / 8,
          ),
        ),
      ),
    );
  }
}
