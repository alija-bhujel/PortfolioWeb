import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/utils/animated_contact.dart';
import 'package:myportfolio/utils/socialrow.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(30),
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                "images/book.jpg",
                height: 200,
              ),
              const Text(
                "Alija Bhujel",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
              ),
              const Text(
                "Hello! I am a beginner developer and a designer who is seeking for an internship",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
                textAlign: TextAlign.center,
              ),
              Wrap(
                // This is used for spacing bet two chips
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    //make something in rounded rectangle
                    label: const Text("Application Developer"),
                    labelStyle:
                        const TextStyle(color: Colors.white, fontSize: 14),
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.green[400],
                  ),
                  Chip(
                    label: const Text("Graphic Designer"),
                    labelStyle:
                        const TextStyle(color: Colors.white, fontSize: 14),
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.green[400],
                  )
                ],
              ),
              const Divider(),
              Animatedcontact(
                  iconData: FontAwesomeIcons.github,
                  title: "Github",
                  subtitle: "alija bhujel",
                  ontap: () {}),
              Animatedcontact(
                  iconData: FontAwesomeIcons.gitlab,
                  title: "Gitlab",
                  subtitle: "@alija bhujel",
                  ontap: () {}),
              Animatedcontact(
                  iconData: FontAwesomeIcons.linkedin,
                  title: "Linkedin",
                  subtitle: "Alija Bhujel",
                  ontap: () {}),
            ],
          ),
          Column(
            children: [
              Divider(
                color: Colors.black,
              ),
              SocialMedia(),
            ],
          ),
        ],
      ),
    );
  }
}
