import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';
import 'package:speak/home/card/home_card.dart';

class LessonCard extends StatefulWidget {
  const LessonCard(
      {super.key,
      required this.imageUrl,
      required this.text1,
      required this.text2,
      required this.image2});
  final imageUrl, text1, text2, image2;

  @override
  State<LessonCard> createState() => _LessonCardState();
}

class _LessonCardState extends State<LessonCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            height: 127,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  // opacity: 1.5,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.imageUrl),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: widget.text1,
                        fontSize: 20,
                        textColor: AppColors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      MyText(
                          text: widget.text2,
                          fontSize: 12,
                          textColor: AppColors.white,
                          fontWeight: FontWeight.w600),                                                                                                                                                                                                                                                                                                                                                                                                                
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                widget.image2,
                width: 35,
              ),
            ),
          ),
          //jhekaldf;s
        ],
      ),
    );
  }
}
