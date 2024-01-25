import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';

class SpeakingIndicator extends StatelessWidget {
  const SpeakingIndicator(
      {super.key,
      required this.currentpercentage,
      required this.totalpercentage});
  final int currentpercentage, totalpercentage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //
        Container(
          height: 11,
          width: MediaQuery.of(context).size.width - 40,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xff908A89),
            borderRadius: BorderRadius.circular(20),
          ),
          child: FractionallySizedBox(
            widthFactor: currentpercentage / totalpercentage,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.declined..withOpacity(0.89),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),

        //
      ],
    );
  }
}
