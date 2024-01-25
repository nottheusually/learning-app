import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';

class Streak extends StatelessWidget {
  const Streak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Color(0xffDEDECE),

      body: Column(
        children: [
SizedBox(height: 80,),
SvgPicture.asset('lib/asset/svg/outputgrey.svg')
        ],
      ),
    );
  }
}