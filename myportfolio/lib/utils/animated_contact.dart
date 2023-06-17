import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Animatedcontact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback ontap;
  const Animatedcontact({
    super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.ontap,
  });

  @override
  State<Animatedcontact> createState() => _AnimatedcontactState();
}

class _AnimatedcontactState extends State<Animatedcontact> {
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
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                    child: FaIcon(
                  widget.iconData,
                  size: 20,
                )),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(widget.subtitle),
                ],
              ),
            ],
          ),
        ));
  }
}
