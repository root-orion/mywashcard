import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class XDcarte extends StatefulWidget {
  XDcarte({
    Key? key,
  }) : super(key: key);

  @override
  State<XDcarte> createState() => _XDcarteState();
}

class _XDcarteState extends State<XDcarte> {
  String myName = '';
  String myPrenoms = '';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'mywashcard_recto' (shape)
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            image: const DecorationImage(
              image: AssetImage('assets/images/carte.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        FutureBuilder(
          future: _fetch_personal_data(),
          builder:(context, snapshot) {
             if (snapshot.connectionState != ConnectionState.done)
             return Text("Chargement...", textAlign: TextAlign.center);
             return Column(
            children: [
              SizedBox(height: 13.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                //DEBUT
        
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      // QR CODE
                      child: Container(
                        width: 30.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage('assets/images/qrcode.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 78.0,
                    ),
                    Column(
                      children: [
                        SizedBox(height: 55.0,),
                        const Text(
                          '4292 86',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            color: Color(0xff000000),
                            letterSpacing: 7.7700000000000005,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        
                //FIN
              ),
              SizedBox(height: 21.0,),
              Row(
                
                
                children: [
                  SizedBox(width:21),
                  Text(
                    '${myName} ${myPrenoms}'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                  SizedBox(width: 85),
                  Text(
                    '12/22',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: false,
                  ),
                ],
              ),
            ],
          );
          },
          
        ),

        
      ],
    );
  }

  _fetch_personal_data() async {
    try {
      final firebaseUser = await FirebaseAuth.instance.currentUser;
      if (firebaseUser != null) {
        final ds = await FirebaseFirestore.instance
            .collection('users')
            .doc(firebaseUser.uid)
            .get();
        if (ds.exists) {
          print(ds);
          final solde = ds.data()!['Nom'];
          final prenoms = ds.data()!['Prenoms'];
          myPrenoms = prenoms.toString();
          if (solde != null) {
            myName = solde.toString();

            print(myName);
          } else {
            print('The value for the "Name" field is null.');
          }
        } else {
          print('The document does not exist.');
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
