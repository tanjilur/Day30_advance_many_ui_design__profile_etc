import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign/widget/brandcolors.dart';
import 'package:uidesign/widget/roundbutton.dart';

class OnbodingScreen extends StatefulWidget {
  const OnbodingScreen({Key? key}) : super(key: key);

  @override
  State<OnbodingScreen> createState() => _OnbodingScreenState();
}

class _OnbodingScreenState extends State<OnbodingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            top: -150,
            child: Transform.rotate(
              angle: pi / 5,
              child: Container(
                height: 400,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: aTextColorDark,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                "Update Progress Your Work for The Team",
                style: myStyle(36, aTextColor, FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset("asset/slider.svg")),
              ),
              RoundButton(
                title: "Sign Up",
                ontap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              RoundButton(
                title: "Log In",
                ontap: () {},
                isColor: true,
              ),
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset("asset/group.svg"),
            ]),
          ),
        ],
      ),
    );
  }
}
