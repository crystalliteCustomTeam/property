import 'package:flutter/material.dart';

import '../../widegts/LoginFirstScreen/logo.dart';
import '../../widegts/LoginWithEmail/loginfields.dart';
import '../loginemail/loginemail.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = 25.0;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logosection('assets/images/logomain2.png'),
            const SizedBox(height: 20),
            loginfields(context, Icons.person, "Enter Full Name"),
            const SizedBox(height: 10),
            loginfields(context, Icons.person, "Enter Username"),
            const SizedBox(height: 10),
            loginfields(context, Icons.calendar_month, "Enter Date of Birth"),
            const SizedBox(height: 10),
            loginfields(context, Icons.calendar_month, "Enter Gender"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginwithEmail()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff007be5),
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child:  const Text("Register",
                  style: TextStyle(fontSize: 16)),
            ),
          ],
        )
      ),
    );
  }
}
