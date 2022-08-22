import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/consts.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: GoogleFonts.encodeSans(
            textStyle: const TextStyle(
              color: text2,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 20),
        if (MediaQuery.of(context).size.width >= 1046)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 15,
                child: Text(
                  'Junior Flutter developer based in Estonia. Passionated about building nice apps, aspire to become a professional. Currently searching for a Flutter job. I have some experience of working for a company as a web developer, but I have never worked for a company as a Flutter developer.',
                  style: GoogleFonts.encodeSans(
                    textStyle: const TextStyle(
                      color: text1,
                      fontSize: 20,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: text2.withOpacity(0.05),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Estonian',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text1,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'Russian',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text1,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'English',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text3,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Native',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text1,
                              fontSize: 20,
                              // fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'Native',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text1,
                              fontSize: 20,
                              // fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'Intermediate',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text3,
                              fontSize: 20,
                              // fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        if (MediaQuery.of(context).size.width < 1046)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Junior Flutter developer based in Estonia. Passionated about building nice apps, aspire to become a professional. Currently searching for a Flutter job. I have some experience of working for a company as a web developer, but I have never worked for a company as a Flutter developer.',
                style: GoogleFonts.encodeSans(
                  textStyle: const TextStyle(
                    color: text1,
                    fontSize: 20,
                    // fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: text2.withOpacity(0.05),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Estonian',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text1,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'Russian',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text1,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'English',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text3,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Native',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text1,
                              fontSize: 20,
                              // fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'Native',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text1,
                              fontSize: 20,
                              // fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'Intermediate',
                          style: GoogleFonts.encodeSans(
                            textStyle: const TextStyle(
                              color: text3,
                              fontSize: 20,
                              // fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
      ],
    );
  }
}
