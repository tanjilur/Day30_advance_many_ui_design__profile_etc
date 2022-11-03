import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uidesign/model/my_list.dart';
import 'package:uidesign/widget/brandcolors.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          "My Team",
          style: myStyle(16, sadatColor),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: GridView.builder(
            itemCount: taskList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    NetworkImage("${taskList[index].img}"),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.teal,
                                  radius: 4,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 20,
                            color: sadatColor,
                          )
                        ],
                      ),
                      Text(
                        "${taskList[index].taskName}",
                        style: myStyle(16, sadatColor),
                      ),
                      Text(
                        "${taskList[index].email}",
                        style: myStyle(14, sadatColor),
                      ),
                    ]),
              );
            }),
      ),
    );
  }
}
