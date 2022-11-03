import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uidesign/widget/brandcolors.dart';

class RoundButton extends StatelessWidget {
  RoundButton({Key? key, this.isColor, this.ontap, this.title})
      : super(key: key);

  String? title;
  VoidCallback? ontap;
  bool? isColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 56,
      padding: EdgeInsets.only(top: 4, bottom: 3, left: 16, right: 16),
      onPressed: ontap,
      color: isColor == null ? buttonColor : Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(
              width: 2,
              color: isColor == null ? Colors.transparent : aTextColor)),
      child: Text(
        "${title}",
        style: myStyle(17, aTextColor, FontWeight.w700),
      ),
    );
    ;
  }
}
