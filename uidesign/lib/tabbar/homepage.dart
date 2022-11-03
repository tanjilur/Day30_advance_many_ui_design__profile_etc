import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uidesign/model/my_list.dart';
import 'package:uidesign/widget/brandcolors.dart';

class Homepagee extends StatelessWidget {
  const Homepagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        actions: [Icon(Icons.search)],
        backgroundColor: bgColor,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: aTextColorDark,
          ),
        ),
        title: Row(
          children: [
            Text(
              "Somthing",
              style: myStyle(12, aTextColor),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Project Task",
                style: myStyle(16, aTextColor, FontWeight.w700),
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 65,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProjectTaskCard(
                        clr: Colors.purple,
                        number: '5',
                        title: "On Going",
                      ),
                      ProjectTaskCard(
                        clr: Colors.purple,
                        number: '5',
                        title: "On Going",
                      ),
                      ProjectTaskCard(
                        clr: Colors.purple,
                        number: '5',
                        title: "On Going",
                      ),
                      ProjectTaskCard(
                        clr: Colors.purple,
                        number: '5',
                        title: "On Going",
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Task",
                      style: myStyle(16, aTextColor, FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      "See More",
                      style: myStyle(13, aTextColor, FontWeight.w400),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: taskList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 120,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Expanded(
                            child: Icon(Icons.check_box),
                            flex: 1,
                          ),
                        ),
                        Expanded(
                            flex: 8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${taskList[index]}",
                                      style: myStyle(
                                          13, aTextColor, FontWeight.w400),
                                    ),
                                    ActionChip(
                                        backgroundColor: taskList[index].type ==
                                                "Open"
                                            ? Colors.green.withOpacity(0.0)
                                            : taskList[index].type == "Urgent"
                                                ? Colors.redAccent
                                                    .withOpacity(0.0)
                                                : Colors.blueAccent
                                                    .withOpacity(0.0),
                                        label: Text(
                                          "${taskList[index].type}",
                                          style: myStyle(
                                              13,
                                              taskList[index].type == "Open"
                                                  ? Colors.green
                                                  : taskList[index].type ==
                                                          "Urgent"
                                                      ? Colors.redAccent
                                                      : Colors.blueAccent,
                                              FontWeight.w400),
                                        ),
                                        onPressed: () {})
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 8,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 5,
                                              decoration: BoxDecoration(
                                                color: taskList[index]
                                                    .color
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                              ),
                                            ),
                                            LayoutBuilder(builder:
                                                (context, constraints) {
                                              return Container(
                                                width: constraints.maxWidth *
                                                    (taskList[index]
                                                            .percentage /
                                                        100),
                                                height: 5,
                                                decoration: BoxDecoration(
                                                  color: taskList[index].color,
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                ),
                                              );
                                            })
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "100/ ${taskList[index].percentage}",
                                            style: myStyles14(),
                                          ),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.teal,
                                    ),
                                    Text(
                                      "${taskList[index].delay} left",
                                      style: myStyle(
                                          13, aTextColor, FontWeight.w400),
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectTaskCard extends StatelessWidget {
  ProjectTaskCard({
    Key? key,
    this.clr,
    this.number,
    this.title,
  }) : super(key: key);

  Color? clr;
  String? number, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: secondaryColor),
      width: 130,
      height: 57,
      margin: EdgeInsets.only(right: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(16)),
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$number",
                  style: myStyle(20, sadatColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "$title",
                  style: myStyle(16, sadatColor),
                ),
              ],
            ),
            flex: 25,
          ),
        ],
      ),
    );
  }
}
