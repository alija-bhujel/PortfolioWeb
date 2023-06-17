import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.center,
            child: Text(
              "My Skills",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: context.screenWidth < 900
                ? context.screenWidth * 0.9
                : ((context.screenWidth * 0.8) / 3),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Programming Languages",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                Divider(),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Chip(
                      label: Text("Dart"),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(color: Colors.indigo),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: Text("Python"),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(color: Colors.indigo),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      label: Text("C++"),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(color: Colors.indigo),
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: context.screenWidth < 900
                ? context.screenWidth * 0.9
                : ((context.screenWidth * 0.8) / 3),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("FrameWorks",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                Divider(),
                Chip(
                  label: Text("Flutter"),
                  labelStyle: TextStyle(
                    color: Colors.indigo,
                  ),
                  side: BorderSide(color: Colors.indigo),
                  backgroundColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
            width: context.screenWidth < 900
                ? context.screenWidth * 0.9
                : ((context.screenWidth * 0.8) / 3),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Other Tools",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                Divider(),
                Chip(
                  label: Text("Canva"),
                  labelStyle: TextStyle(
                    color: Colors.indigo,
                  ),
                  side: BorderSide(color: Colors.indigo),
                  backgroundColor: Colors.white,
                )
              ],
            ),
          ),
        ]);
  }
}
