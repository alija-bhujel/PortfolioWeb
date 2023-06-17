import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myportfolio/components/about.dart';
import 'package:myportfolio/components/education.dart';
import 'package:myportfolio/components/footer.dart';
import 'package:myportfolio/components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: Text("Education")),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: Text("Skills")),
    )
  ];
  bool ismobile = false;
  @override
  Widget build(BuildContext context) {
    ismobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
        appBar: AppBar(
          title: Text("My Portfolio Web"),
          actions: ismobile ? null : navItems,
        ),
        drawer: ismobile
            ? Drawer(
                child: ListView(
                  children: navItems,
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    About(),
                    SizedBox(
                      width: 20,
                    ),
                    Education(),
                  ],
                ),
                Skills(),
                Footer(),
              ],
            ),
          ),
        ));
  }
}
