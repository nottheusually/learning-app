import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator(
      {super.key, required this.currentpage, required this.totalpages});
  final int currentpage, totalpages;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          Container(
            height: 15,
            width: MediaQuery.of(context).size.width - 100,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: const Color(0xff908A89),
              borderRadius: BorderRadius.circular(20),
            ),
            child: FractionallySizedBox(
              widthFactor: currentpage / totalpages,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.declined..withOpacity(0.89),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          const SizedBox(
            width: 10,
          ),

          //
          Text(
            "$currentpage/$totalpages",
            style: GoogleFonts.josefinSans(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
