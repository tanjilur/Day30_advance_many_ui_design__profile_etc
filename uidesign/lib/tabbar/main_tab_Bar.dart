import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign/tabbar/calender_page.dart';
import 'package:uidesign/tabbar/homepage.dart';
import 'package:uidesign/tabbar/profile_page.dart';
import 'package:uidesign/tabbar/project_page.dart';
import 'package:uidesign/widget/brandcolors.dart';

class MainTabBar extends StatefulWidget {
  const MainTabBar({Key? key}) : super(key: key);

  @override
  State<MainTabBar> createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  dynamic currentIndex = 0;
  List<Widget> pages = [
    Homepagee(),
    ProjectPage(),
    ProfilePage(),
    CalenderPage()
  ];

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showBottomSheet();
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // body: pages[currentIndex],
        body: PageView(
          controller: pageController,
          children: pages,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: secondaryColor,
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                        pageController.jumpToPage(currentIndex);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_alarm),
                        Text(
                          "My Task",
                          style: myStyles12(),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                        pageController.jumpToPage(currentIndex);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_alarm),
                        Text(
                          "Members",
                          style: myStyles12(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                        pageController.jumpToPage(currentIndex);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_alarm),
                        Text(
                          "My Task",
                          style: myStyles12(),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                        pageController.jumpToPage(currentIndex);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_alarm),
                        Text(
                          "My Task",
                          style: myStyles12(),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ));
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 600,
            color: secondaryColor,
            child: Column(
              children: [
                Text("Tanji",
                    style: myStyle(15, Colors.blueAccent, FontWeight.w700)),
              ],
            ),
          );
        });
  }
}




/*

BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/layout.svg"),
                label: "My Task",
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "My Task",
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
                color: Colors.transparent,
              ),
              label: "My Task",
              backgroundColor: secondaryColor,
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/layout.svg"),
                label: "My Task",
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "My Task",
                backgroundColor: secondaryColor),
          ]),

*/