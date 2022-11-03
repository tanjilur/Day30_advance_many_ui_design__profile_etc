import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign/screen/onboding.dart';
import 'package:uidesign/widget/brandcolors.dart';

class SplashScrenui extends StatefulWidget {
  const SplashScrenui({Key? key}) : super(key: key);

  @override
  State<SplashScrenui> createState() => _SplashScrenuiState();
}

class _SplashScrenuiState extends State<SplashScrenui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 96,
            width: 96,
            color: secondaryColor,
            margin: EdgeInsets.only(bottom: 32),
            padding: EdgeInsets.all(30),
            child: SvgPicture.asset("asset/layout.svg"),
          ),
          Text(
            "RANCHING",
            style: myStyle(36, aTextColor, FontWeight.w700),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Your Personal Task Manager",
            style: myStyle(17, aTextColor, FontWeight.w700),
          ),
          SizedBox(
            height: 270,
          ),
          MaterialButton(
            height: 56,
            padding: EdgeInsets.only(top: 4, bottom: 3, left: 16, right: 16),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => OnbodingScreen())));
            },
            color: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Getting Started",
                  style: myStyle(17, aTextColor, FontWeight.w700),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 39,
          ),
          SvgPicture.asset("asset/group.svg"),
        ]),
      ),
    );
  }
}
