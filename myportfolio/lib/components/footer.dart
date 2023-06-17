import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myportfolio/utils/socialrow.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SocialMedia(),
          SizedBox(
            height: 10,
          ),
          Text("Begineer Developer")
        ],
      ),
    );
  }
}
