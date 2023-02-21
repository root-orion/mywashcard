import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class XDcarte extends StatelessWidget {
  XDcarte({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'mywashcard_recto' (shape)
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/carte.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Pinned.fromPins(

          Pin(size: 10.w, start: 10.w),
          Pin(size: 10.w, start: 7.w),
          child:
              // Adobe XD layer: 'qr' (shape)
              Container(
                width:30.0,
                height:30.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/qrcode.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 20.w, end: 7.0),
          Pin(size: 18.0, middle: 0.535),
          child: Text(
            '4292 86',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: const Color(0xff000000),
              letterSpacing: 7.7700000000000005,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 192.0, start: 22.0),
          Pin(size: 24.0, end: 19.0),
          child: Text(
            'FORESTE TIEMOKO',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15.0,
              color: const Color(0xff000000),
            ),
            softWrap: false,
          ),
        ),
        Align(
          alignment: Alignment(0.45, 0.8),
          child: SizedBox(
            width: 35.0,
            height: 18.0,
            child: Text(
              '12/22',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}
