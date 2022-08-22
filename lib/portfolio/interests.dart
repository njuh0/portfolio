import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/consts.dart';
import 'package:portfolio/widgets/myChip.dart';

class Interests extends StatefulWidget {
  Interests({Key? key}) : super(key: key);

  @override
  State<Interests> createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Some of my interests',
          style: GoogleFonts.encodeSans(
            textStyle: const TextStyle(
              color: text2,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          children: [
            MyChip(
              text: "Chinese web novels",
              bgColor: text2.withOpacity(0.3),
              textColor: text3,
            ),
            MyChip(
              text: "Korean comics",
              bgColor: text2.withOpacity(0.3),
              textColor: text3,
            ),
            MyChip(
              text: "Japanese animation",
              bgColor: text2.withOpacity(0.3),
              textColor: text3,
            ),
            MyChip(
              text: "Space",
              bgColor: text2.withOpacity(0.1),
              textColor: text3,
            ),
          ],
        ),
      ],
    );
  }
}
