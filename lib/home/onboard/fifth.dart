import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:speak/home/screen/home_page.dart';
import 'package:speak/home/screen/incators/pageindicator.dart';

class Fift extends StatefulWidget {
  const Fift({super.key});

  @override
  State<Fift> createState() => _FiftState();
}

class _FiftState extends State<Fift> {
  List<String> options = [
    'Travel',
    'Pets',
    'Food',
    "Music",
    'Reading',
    'Technologies',
    'Studies',
    'Psychology',
    'Gaming',
    "TV/Movies",
    " Sports",
    "Languages",
    "Fashion",
    'Fitness',
    "Climate Change",
    " Slef-care",
    'Work Life',
    "Culture",
    "Design",
    "Sociology",
    "Outdoor",
    'Networking',
    'Romance',
    'Shopping',
    "Sight-seeing",
  ];

  List<String> tags = [];

  @override
  Widget build(BuildContext context) {
    List<List<String>> rows = [];
    int currentIndex = 0;
    while (currentIndex < options.length) {
      int endIndex = currentIndex + 4;
      if (endIndex > options.length) {
        endIndex = options.length;
      }
      rows.add(options.sublist(currentIndex, endIndex));
      currentIndex = endIndex;
    }
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                        ),
                        // SizedBox(
                        //   width: 5,
                        // ),
                        PageIndicator(currentpage: 5, totalpages: 6),
                      ],
                    ),
                    const Text(
                      'What interests you?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Select all that applies',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff908A89)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ChipsChoice<String>.multiple(
                      value: tags,
                      onChanged: (val) => setState(() => tags = val),
                      choiceItems: C2Choice.listFrom<String, String>(
                        source: options,
                        value: (i, v) => v,
                        label: (i, v) => v,
                        tooltip: (i, v) => v,
                      ),
                      choiceCheckmark: false,
                      textDirection: TextDirection.ltr,
                      wrapped: true,
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Container(
                        height: 56,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.declined),
                        child: const Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Skip for now',
                      style: TextStyle(
                          color: AppColors.declined,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
