import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class FloatingSheet extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Widget? backgroundWidget;
  final bool? isImage;

  const FloatingSheet({
    Key? key,
    required this.child,
    this.backgroundColor,
    Widget? backgroundWidget,
    bool? isImage,
  })  : backgroundWidget = backgroundWidget ?? const SizedBox(),
        isImage = isImage ?? false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SafeArea(child: child);
    return SafeArea(
      child: isImage!
          ? child
          : Padding(
              padding: EdgeInsets.only(
                left: 0,
                right: 0,
                bottom: MediaQuery.of(context).size.height / 4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: backgroundColor,
                    ),
                    child: child,
                  ),
                ],
              ),
            ),
    );
  }
}

Future<T> showFloatingBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Widget? backgroundWidget,
  Color? backgroundColor,
  bool? isImage,
}) async {
  final result = await showCustomModalBottomSheet(
      context: context,
      builder: builder,
      containerWidget: (_, animation, child) => FloatingSheet(
            backgroundWidget: backgroundWidget,
            backgroundColor: backgroundColor,
            isImage: isImage,
            child: child,
          ),
      expand: false);

  return result;
}
