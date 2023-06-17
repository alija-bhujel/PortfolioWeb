import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/utils/animatedicon_button.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedIconButton(iconData: FontAwesomeIcons.facebook, ontap: () {}),
        SizedBox(
          width: 10,
        ),
        AnimatedIconButton(iconData: FontAwesomeIcons.instagram, ontap: () {}),
        SizedBox(
          width: 10,
        ),
        AnimatedIconButton(iconData: FontAwesomeIcons.twitter, ontap: () {}),
      ],
    );
  }
}
