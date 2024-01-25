import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:speak/home/card/home_card.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDEDECE),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Center(child: SvgPicture.asset('lib/asset/svg/bro.svg')),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [SvgPicture.asset('lib/asset/svg/loader.svg')],
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: const Column(
                children: [
                  MyText(
                      text: 'Coming Soon!',
                      fontSize: 32,
                      textColor: Color(0xff650C01),
                      fontWeight: FontWeight.w600),
                  MyText(
                      text: 'We\'ll be up soon, keep and eye \n on us ',
                      fontSize: 14,
                      textColor: Color(0xff616161),
                      fontWeight: FontWeight.w400)
                ],
              ),
            ),
            Row(
              children: [SvgPicture.asset('lib/asset/svg/flash.svg')],
            )
          ],
        ),
      ),
    );
  }
}
