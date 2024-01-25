import 'package:flutter/material.dart';
import 'package:speak/home/card/lesson_card.dart';

class VideoLes extends StatefulWidget {
  const VideoLes({super.key});

  @override
  State<VideoLes> createState() => _VideoLesState();
}

class _VideoLesState extends State<VideoLes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffDEDECE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 12, top: 15, bottom: 15),
              child: Column(
                children: [
                  LessonCard(
                    imageUrl: 'lib/asset/image/trip.jpeg',
                    text1: 'First Trip',
                    text2:
                        'Here you will listen to conversations between \ntourists, and learn to speak together with  them!',
                    image2: 'lib/asset/image/Play.png',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  LessonCard(
                    imageUrl: 'lib/asset/image/free.jpeg',
                    text1: 'Freelance Work',
                    text2:
                        'After taking this classes, you will be \n able to take orders from foreigners!',
                    image2: 'lib/asset/image/Playash.png',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  LessonCard(
                    imageUrl: 'lib/asset/image/meeting.jpeg',
                    text1: 'First Meeting',
                    text2:
                        'You will learn to communicate with your \n colleagues and understand them!',
                    image2: 'lib/asset/image/Playgrey.png',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  LessonCard(
                    imageUrl: 'lib/asset/image/partner.jpeg',
                    text1: 'Meeting With Partners',
                    text2:
                        'You will learn to communicate with your \n colleagues and understand them!',
                    image2: 'lib/asset/image/Playblack.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
