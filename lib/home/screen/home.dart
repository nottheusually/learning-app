import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';
import 'package:speak/home/card/home_card.dart';
import 'package:speak/home/screen/speaking/speaking.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDEDECE),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 33,
                        width: 285,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color:
                                    const Color(0xff908A89).withOpacity(0.50))),
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
                      const SizedBox(
                        width: 5,
                      ),
                      // CircleAvatar(
                      //   backgroundColor: Color(0xffFFBFB6),
                      //   child: SvgPicture.asset('lib/asset/svg/11.svg'),
                      // )
                      CircleAvatar(
                        radius: 20.0,
                        backgroundColor: const Color(
                            0xffFFBFB6), // Set your desired background color
                        child: ClipOval(
                          child: Image.asset('lib/asset/image/11.png'),
                          // child: SvgPicture.asset(
                          //   'lib/asset/svg/11.svg',
                          // height: 80.0,
                          // width: 80.0,
                          // ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Your',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Josefin Sans',
                        color: AppColors.declined),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Learning Sphere',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Josefin Sans',
                            color: AppColors.declined),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      SvgPicture.asset('lib/asset/svg/Vector.svg')
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HomeCard(
                        text1: 'Reading',
                        text2: 'You completed 50%',
                        imageUrl: 'lib/asset/svg/open_book.svg',
                        percent1: 50,
                        percent2: 100,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const HomeCard(
                          text1: 'Listening',
                          text2: 'You completed 50%',
                          imageUrl: 'lib/asset/svg/haedphone.svg',
                          percent1: 50,
                          percent2: 100,
                        ),
                      )
                    ],
                  ),

                  //writting & speaking container
                  
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HomeCard(
                        text1: 'Writting',
                        text2: 'You completed 70%',
                        imageUrl: 'lib/asset/svg/write.svg',
                        percent1: 70,
                        percent2: 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Show loader
                          showDialog(
                            context: context,
                            barrierDismissible:
                                false, // To prevent users from dismissing the dialog
                            builder: (BuildContext context) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          );

                          // Delay for 5 seconds
                          Future.delayed(const Duration(seconds: 1), () {
                            // Pop the loader
                            Navigator.pop(context);

                            // Push to the next page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Speaking()),
                            );
                          });
                        },
                        child: const HomeCard(
                          text1: 'Speaking',
                          text2: 'You completed 25%',
                          imageUrl: 'lib/asset/svg/speak.svg',
                          percent1: 25,
                          percent2: 100,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeCard(
                        text1: 'Books',
                        text2: 'You completed 80%',
                        imageUrl: 'lib/asset/svg/book.svg',
                        percent1: 80,
                        percent2: 100,
                      ),
                      HomeCard(
                        text1: 'Quizzes',
                        text2: 'You completed 40%',
                        imageUrl: 'lib/asset/svg/question.svg',
                        percent1: 40,
                        percent2: 100,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeCard(
                        text1: 'Games',
                        text2: 'You completed 90%',
                        imageUrl: 'lib/asset/svg/game (2).svg',
                        percent1: 90,
                        percent2: 100,
                      ),
                      HomeCard(
                        text1: 'Translation',
                        text2: 'You completed 40%',
                        imageUrl: 'lib/asset/svg/translate.svg',
                        percent1: 40,
                        percent2: 100,
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
