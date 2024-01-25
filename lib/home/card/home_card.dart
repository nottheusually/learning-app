import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak/home/screen/incators/percentage_indicatoe.dart';

class HomeCard extends StatefulWidget {
  const HomeCard(
      {super.key,
      required this.text1,
      required this.text2,
      required this.imageUrl,
      required this.percent1,
      required this.percent2});
  final text1, text2, imageUrl, percent1, percent2;
  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xff650C01).withOpacity(0.50),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(widget.imageUrl),
            MyText(
              text: widget.text1,
              fontSize: 20,
              textColor: const Color(0xff000000),
              fontWeight: FontWeight.w700,
            ),
            MyText(
              text: widget.text2,
              fontSize: 10,
              textColor: const Color(0xff908A89),
              fontWeight: FontWeight.w600,
            ),
            PercentageIndicator(
                currentpercentage: widget.percent1,
                totalpercentage: widget.percent2)
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.textColor,
    required this.fontWeight,
  });

  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.josefinSans(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor),
    );
  }
}
