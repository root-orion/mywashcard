import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDEntete extends StatelessWidget {
  XDEntete({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffe1bd07),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0),
            ),
          ),
        ),
        Container(),
        Container(),
      ],
    );
  }
}
