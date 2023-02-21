import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDSolde extends StatelessWidget {
  XDSolde({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 34.0, middle: 1.0),
          child: Text(
            '10 000 F CFA',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 28,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Align(
          alignment: Alignment(0.006, -1.0),
          child: SizedBox(
            width: 42.0,
            height: 15.0,
            child: Text(
              'SOLDE',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 12,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}
