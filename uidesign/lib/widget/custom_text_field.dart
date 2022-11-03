import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uidesign/widget/brandcolors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.controllerrr,
      this.hintText,
      this.icon,
      this.title,
      this.validator})
      : super(key: key);

  String? title, hintText;
  TextEditingController? controllerrr;
  dynamic? validator;
  dynamic? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${title}",
          style: myStyles16(),
        ),
        TextFormField(
          controller: controllerrr,
          keyboardType: TextInputType.number,
          validator: validator,
          style: myStyles14(),
          decoration: InputDecoration(
            errorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: aTextColorDark)),

            //suffixIcon: Icon(Icons.email),
            // suffix: Icon(Icons.email),
            prefixIcon: icon,
            //prefix: Icon(Icons.email),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: aTextColorDark)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: aTextColorDark)),
            hintText: "$hintText",
            //labelText: "Enter your email",
            fillColor: Colors.transparent,
            filled: true,
            hintStyle: TextStyle(color: aTextColorDark),
            labelStyle: TextStyle(color: aTextColorDark),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        // TextFormField(
        //   controller: nameController,
        //   keyboardType: TextInputType.number,
        //   validator: (value) {
        //     if (!value!.contains("@")) {
        //       return "Invalid email Address";
        //     }
        //   },
        //   style: myStyles14(),
        //   decoration: InputDecoration(
        //     errorBorder: UnderlineInputBorder(
        //         borderRadius: BorderRadius.circular(20),
        //         borderSide: BorderSide(color: aTextColorDark)),

        //     //suffixIcon: Icon(Icons.email),
        //     suffix: Icon(Icons.email),
        //     prefixIcon: Icon(Icons.email),
        //     //prefix: Icon(Icons.email),

        //     focusedBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(20),
        //         borderSide: BorderSide(color: aTextColorDark)),
        //     enabledBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(20),
        //         borderSide: BorderSide(color: aTextColorDark)),
        //     hintText: "Enter your email",
        //     labelText: "Enter your email",
        //     fillColor: Colors.transparent,
        //     filled: true,
        //     hintStyle: TextStyle(color: aTextColorDark),
        //     labelStyle: TextStyle(color: aTextColorDark),
        //   ),
        // ),
      ],
    );
  }
}
