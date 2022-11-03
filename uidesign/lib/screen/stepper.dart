import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uidesign/widget/brandcolors.dart';
import 'package:uidesign/widget/custom_text_field.dart';
import 'package:uidesign/widget/roundbutton.dart';

class Steppr1 extends StatefulWidget {
  const Steppr1({Key? key}) : super(key: key);

  @override
  State<Steppr1> createState() => _Steppr1State();
}

class _Steppr1State extends State<Steppr1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        title: SvgPicture.asset("asset/slider.svg"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.only(top: 15),
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Complete Your Profiles",
              style: myStyle(15, aTextColor),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                chooseImage();
              },
              child: Stack(
                children: [
                  Positioned(
                      top: -10,
                      right: -10,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              _image = null;
                            });
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 20,
                          ))),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: aGreyColor, width: 1.5)),
                    child: Container(
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: aGreyColor,
                        shape: BoxShape.circle,
                      ),
                      child: _image == null
                          ? IconButton(
                              onPressed: () {
                                chooseImage();
                              },
                              icon: Icon(Icons.camera))
                          : CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(_image!.path),
                            ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              title: "Your Full Name",
              hintText: "Enter Your Full Name",
              controllerrr: nameController,
              icon: Icon(
                Icons.person,
                color: aTextColorDark,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              title: "Password",
              hintText: "Enter Your Password",
              controllerrr: passController,
              icon: Icon(
                Icons.password,
                color: aTextColorDark,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RoundButton(
              ontap: () {},
              title: "Continue",
            )
          ],
        ),
      ),
    );
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  File? _image;
  ImagePicker _picker = ImagePicker();
  chooseImage() {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("Choose Image From"),
            children: [
              SimpleDialogOption(
                child: Text("Choose From Gallery"),
                onPressed: () {
                  chooseImageFromGalery();
                },
              ),
              SimpleDialogOption(
                child: Text("Choose From Camera"),
                onPressed: () {
                  chooseImageFromCamera();
                },
              ),
              SimpleDialogOption(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  chooseImageFromGalery() async {
    var picImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(picImage!.path);
    });
    Navigator.of(context).pop();
  }

  chooseImageFromCamera() async {
    var picImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(picImage!.path);
    });
    Navigator.of(context).pop();
  }
}
