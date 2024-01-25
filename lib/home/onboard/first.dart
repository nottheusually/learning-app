import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';

class First extends StatefulWidget {
  const First({
    super.key,
  });

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Stack(
        children: [
          Container(
            // margin: const EdgeInsets.all(12),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  // opacity: 1.5,
                  fit: BoxFit.cover,
                  image: AssetImage('lib/asset/image/background.jpeg'),
                )),
            child: const Row(
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
                      Text(
                        'hello',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Josefin Sans',
                            fontSize: 20,
                            color: AppColors.green),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            fontFamily: 'Josefin Sans',
                            color: AppColors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
