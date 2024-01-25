import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:speak/home/color/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak/home/card/home_card.dart';
import 'package:speak/home/screen/incators/speak_indicator.dart';

class Speaking extends StatelessWidget {
  const Speaking({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffDEDECE),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                  SpeakingIndicator(currentpercentage: 60, totalpercentage: 100)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const MyText(
                  text: 'Speak this sentence',
                  fontSize: 20,
                  textColor: Color(0xff616161),
                  fontWeight: FontWeight.w600),
              const SizedBox(
                height: 20,
              ),
              Center(child: SvgPicture.asset('lib/asset/svg/speaker.svg')),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Bonjour, Buchi, enchante',
                  style: GoogleFonts.josefinSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff616161),
                      decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Center(child: SvgPicture.asset('lib/asset/svg/input.svg')),
              const SizedBox(
                height: 170,
              ),
              const MyText(
                  text: 'Brilliant!',
                  fontSize: 20,
                  textColor: Color(0xff616161),
                  fontWeight: FontWeight.w700),
              const MyText(
                  text: 'Meaning:',
                  fontSize: 16,
                  textColor: Color(0xff616161),
                  fontWeight: FontWeight.w500),

              //
              const MyText(
                  text: 'Hello, Buchi, nice to meet you.',
                  fontSize: 16,
                  textColor: Color(0xff616161),
                  fontWeight: FontWeight.w400),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.declined..withOpacity(0.89)),
                  child: const Center(
                    child: MyText(
                        text: 'Continue',
                        fontSize: 20,
                        textColor: AppColors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
