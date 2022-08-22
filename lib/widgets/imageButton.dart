import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/consts.dart';
import 'package:simple_animations/simple_animations.dart';

class ImageButton extends StatefulWidget {
  String? url;
  IconData? icon;
  double minSize = 30;
  double maxSize = 40;
  void Function() onClick;

  ImageButton({
    Key? key,
    this.url,
    this.icon,
    double? minSize,
    double? maxSize,
    required this.onClick,
  })  : minSize = minSize ?? 30,
        maxSize = maxSize ?? 40,
        super(key: key);

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> with AnimationMixin {
  late AnimationController sizeController;
  late Animation<double> size;

  @override
  void initState() {
    sizeController = createController();
    size = Tween<double>(begin: widget.minSize, end: widget.maxSize)
        .animate(sizeController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onClick,
        child: widget.url != null
            ? SizedBox(
                width: 40,
                height: 40,
                child: FittedBox(
                  fit: BoxFit.none,
                  child: SvgPicture.asset(
                    widget.url!,
                    height: size.value,
                    color: text1,
                  ),
                ),
              )
            : widget.icon != null
                ? SizedBox(
                    width: 40,
                    height: 40,
                    child: Icon(
                      widget.icon,
                      size: size.value,
                      color: text1,
                    ),
                  )
                : const SizedBox(),
      ),
      onHover: (event) {
        sizeController.play(duration: const Duration(milliseconds: 100));
      },
      onExit: (event) {
        sizeController.reverse();
      },
    );
  }
}
