import 'package:flutter/material.dart';
import 'package:speak/home/screen/home.dart';
import 'package:speak/home/color/colors.dart';
import 'package:speak/home/screen/chart.dart';
import 'package:speak/home/screen/games.dart';
import 'package:speak/home/screen/lession.dart';
import 'package:speak/home/screen/excercise.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List mybars = [
    const Home(),
    const Lesson(),
    const Exercise(),
    const Games(),
    const Chart(),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: mybars[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          elevation: 3,
          backgroundColor: Color(0xffDEDECE),

          type: BottomNavigationBarType.fixed,
          // backgroundColor: Colors.white,
          selectedItemColor: AppColors.declined,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_lesson),
              label: 'Lesson',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Exercises',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports_outlined),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Charts',
            ),
          ],
        ),
      ),
    );
  }
}
