import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData iconData;

  final VoidCallback ontap;
  const AnimatedIconButton({
    super.key,
    required this.iconData,
    required this.ontap,
  });

  @override
  State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton> {
  @override
  Widget build(BuildContext context) {
    bool _isHovering = false;
    return InkWell(
        onTap: (() {}),
        onHover: (Val) {
          setState(() {
            _isHovering = Val;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: _isHovering ? Colors.grey.shade300 : Colors.white)),
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: FaIcon(
                  widget.iconData,
                  size: 30,
                ),
              ),
            ],
          ),
        ));
  }
}
