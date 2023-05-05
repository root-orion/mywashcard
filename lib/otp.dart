import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OTPFields extends StatefulWidget {
  const OTPFields({Key? key, required this.verificationId, required this.phoneNumber})
      : super(key: key);
      final String verificationId;
  final String phoneNumber;

  @override
  State<OTPFields> createState() => _OTPFieldsState();
}

class _OTPFieldsState extends State<OTPFields> {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool otpVisibility = false;
  String verificationID = "";


  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+2250777949763",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

// Fonction pour envoyer le code de vérification au numéro de téléphone
Future<void> sendVerificationCode(String phoneNumber) async {
  await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    verificationCompleted: (PhoneAuthCredential credential) {
        print("completed");
    },
    verificationFailed: (FirebaseAuthException e) {
      print(e.message);
    },
    codeSent: (String verificationId, int? resendToken) {
        print("sent");
    },
    codeAutoRetrievalTimeout: (String verificationId) {
      print("timeout");
    },
  );
}



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sendVerificationCode("+2250777949763");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffe1bd07),
        title: Text('Code de vérification'),
      ),
      body: Center(
        child: OTPTextField(
          length: 5,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 80,
          style: TextStyle(fontSize: 17),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.underline,
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
        ),
      ),
    );
  }
}
