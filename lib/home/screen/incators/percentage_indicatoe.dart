import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';

class PercentageIndicator extends StatelessWidget {
  const PercentageIndicator(
      {super.key,
      required this.currentpercentage,
      required this.totalpercentage});
  final int currentpercentage, totalpercentage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          Container(
            height: 12,
            width: 115,
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
      ),
    );
  }
}
