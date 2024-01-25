import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';
import 'package:speak/home/screen/lesson/audio.dart';
import 'package:speak/home/screen/lesson/videoles.dart';

class Lesson extends StatefulWidget {
  const Lesson({Key? key}) : super(key: key);

  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffDEDECE),

        // appBar: AppBar(
        //   elevation: 0,
        //   leading: GestureDetector(
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //     child: const Icon(
        //       Icons.arrow_back,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 33,
              width: 300,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color(0xff908A89).withOpacity(0.50))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'lib/asset/svg/flag.svg',
                      width: 24.0,
                      height: 16.5,
                      // color: Colors.blue, // Set the color if needed
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'lib/asset/svg/fire.svg',
                          width: 24.0,
                          height: 16.5,
                          // color: Colors.blue, // Set the color if needed
                        ),
                        const Text(
                          '2',
                          style: TextStyle(
                              color: AppColors.declined,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'lib/asset/svg/arrow.svg',
                          width: 24.0,
                          height: 16.5,
                          // color: Colors.blue, // Set the color if needed
                        ),
                        const Text(
                          '17',
                          style: TextStyle(
                              color: AppColors.declined,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      'lib/asset/svg/Notification.svg',
                      width: 24.0,
                      height: 16.5,
                      // color: Colors.blue, // Set the color if needed
                    ),
                  ]),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: 'Audio Lesson', 
                    ),
                    Tab(
                      text: 'Video Lesson',
                    ),
                  ],
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorPadding: const EdgeInsets.all(2),
                  indicator: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.declined, // Color for the indicator
                  ),
                  indicatorSize: TabBarIndicatorSize
                      .tab, 
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  // Content for Audio Lesson Tab
                  AudioLes(),

                  // Content for Video Lesson Tab
                  VideoLes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






// 



