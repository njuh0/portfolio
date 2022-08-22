import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/consts.dart';

class MyChip extends StatefulWidget {
  String text;
  Color? bgColor;
  Color? textColor;
  MyChip({required this.text, Color? bgColor, Color? textColor, Key? key})
      : bgColor = bgColor ?? text2,
        textColor = textColor ?? bg1,
        super(key: key);

  @override
  State<MyChip> createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Chip(
        elevation: 0,
        padding: const EdgeInsets.all(8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        backgroundColor: widget.bgColor,
        label: Text(
          widget.text,
          style: GoogleFonts.encodeSans(
            textStyle: TextStyle(color: widget.textColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
