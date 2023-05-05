import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mywashcard/constants.dart';
import 'package:mywashcard/function.dart';
import 'package:mywashcard/otp.dart';
import './xd_champ_ville.dart';
import './xd_champ_quartier.dart';

import 'package:firebase_core/firebase_core.dart';

class XDConnexion extends StatefulWidget {
  XDConnexion({
    Key? key,
  }) : super(key: key);

  @override
  State<XDConnexion> createState() => _XDConnexionState();
}

class _XDConnexionState extends State<XDConnexion> {
  bool loading = false;
  String phoneNumber = '';
  //initialisation de firebase --->

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initializeFirebase();
  }
//fin initialisation de firebase --->
void sendOtpCode() {
   
  setState(() {
     loading = true;
  });
    final _auth = FirebaseAuth.instance;
    if (phoneNumber.isNotEmpty) {
      authWithPhoneNumber(phoneNumber, onCodeSend: (verificationId, v) {
      
        setState(() {
            loading = false;
        });
        Navigator.of(context).push(MaterialPageRoute(
            builder: (c) => OTPFields(
                  verificationId: verificationId,
                  phoneNumber: phoneNumber,
                )));
      }, onAutoVerify: (v) async {
        await _auth.signInWithCredential(v);
        Navigator.of(context).pop();
      }, onFailed: (e) {
        
        setState(() {
          loading = false;    
        });
        print(e);
        print("Le code est erroné");
      }, autoRetrieval: (v) {});
    }
  }
//Login function-->
  // static Future<User?> loginUsingEmailPassword(
  //     {required String email,
  //     required String password,
  //     required BuildContext context}) async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user;
  //   try {
  //     UserCredential userCredential = await auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     user = userCredential.user;
  //   } on FirebaseAuthException catch (e) {
  //     print(e.code);
  //     if (e.code == "user-not-found") {
  //       print("No user found for that email");
  //     }
  //   }
  //   return user;
  // }

  //End login function-->

// Fonction pour envoyer le code de vérification au numéro de téléphone
  // Future<void> sendVerificationCode(String phoneNumber) async {
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //     phoneNumber: phoneNumber,
  //     verificationCompleted: (PhoneAuthCredential credential) {},
  //     verificationFailed: (FirebaseAuthException e) {},
  //     codeSent: (String verificationId, int? resendToken) {},
  //     codeAutoRetrievalTimeout: (String verificationId) {},
  //   );
  // }

  final _formKey = GlobalKey<FormState>();
  //Textfields Controllers------>
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //End Textfield Conttrollers----->

    //clik sur connecter
    clickonconect() async {
      if (_formKey.currentState!.validate()) {
        // on success, notify the parent widget

        // User? user = await loginUsingEmailPassword(
        //     email: _emailController.text,
        //     password: _passwordController.text,
        //     context: context);
        // print(user);
        // if (user != null) {
        //nabigate to home
       
        // }
      }
    }
    //fin clique sur connecter

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            // Adobe XD layer: 'car-wash-and-detali…' (shape)
            Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/car-wash.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.05), BlendMode.dstIn),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20.h,
                        height: 10.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Logo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'CONNEXION',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.dp,
                      color: const Color(0xffe1bd07),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(19.0),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffe1bd07),
                            offset: Offset(0, 0),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height:20),
                            Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: IntlPhoneField(
                                  decoration: InputDecoration(
                                    labelText: 'Téléphone',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                    ),
                                  ),
                                  initialCountryCode: 'CI',
                                  onChanged: (phone) {
                                    print(phone.completeNumber);
                                    phoneNumber = phone.completeNumber;
                                  },
                                )
                                // TextFormField(
                                //   enableSuggestions: true,
                                //   controller: _emailController,
                                //   decoration:
                                //       const InputDecoration(label: Text('Tel :')),
                                //   validator: (text) {
                                //     RegExp regExp =  RegExp(emailPattern);
                                //     if (text == null || text.isEmpty) {
                                //       return 'Ne peut être vide';
                                //     }
                                //     //  else if (!regExp.hasMatch(text)) {
                                //     //   return 'Entez une adresse email valide svp ';
                                //     // }

                                //     return null;
                                //   },
                                // ),
                                ),
                            // Padding(
                            //   padding: const EdgeInsets.all(16.0),
                            //   child: TextFormField(
                            //     obscureText: true,
                            //     controller: _passwordController,
                            //     decoration: const InputDecoration(
                            //       label: Text('Mot de passe :'),
                            //     ),
                            //     validator: (text) {
                            //       if (text == null || text.isEmpty) {
                            //         return 'Ne peut être vide';
                            //       }
                            //       return null;
                            //     },
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15)),
                      onPressed: loading ? null : sendOtpCode,
                      child: loading
                          ? const CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation(Colors.white),
                                  )
                          : const Text(
                                    'Se connecter',
                                    style: TextStyle(fontSize: 20),
                                  ),
                    ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // margin: EdgeInsets.fromLTRB(-228.0, 1.0, -229.0, 0.0),
            ),

            // Pinned.fromPins(
            //   Pin(start: 10.w, end: 10.w),
            //   Pin(size: 5.h, end: 15.h),
            //   child: Text(
            //     'Mot de passe oublié ?',
            //     style: TextStyle(
            //       fontFamily: 'Montserrat',
            //       fontSize: 20.sp,
            //       color: const Color(0xffe1bd07),
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
