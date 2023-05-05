import 'package:estate/screens/loginemail/loginemail.dart';
import 'package:estate/widegts/LoginFirstScreen/dividerwithtext.dart';
import 'package:estate/widegts/LoginFirstScreen/loginsections.dart';
import 'package:estate/widegts/LoginFirstScreen/logo.dart';
import 'package:flutter/material.dart';

import '../registerscreen/register.dart';

class LoginSections extends StatelessWidget {
  const LoginSections({Key? key}) : super(key: key);

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
            const SizedBox(height: 15),
            const Text(
              "Let's get you in",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 25),
            Column(
              children: [
                socialmedialoginbutton(
                    'assets/images/fb.png', "Continue with Facebook", () {
                  const snackBar = SnackBar(
                    content: Text('You login with Facebook'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
                SizedBox(height: 15),
                socialmedialoginbutton(
                    'assets/images/g.png', "Continue with Google", () {
                  const snackBar = SnackBar(
                    content: Text('You login with google'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
                const SizedBox(height: 15),
                socialmedialoginbutton(
                    'assets/images/apple.png', "Continue with Apple", () {
                  const snackBar = SnackBar(
                    content: Text('You login with apple'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
                const SizedBox(height: 15),
                dividerwithtext("or"),
                const SizedBox(height: 15),
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
                  child:  const Text("Sign in with password",
                      style: TextStyle(fontSize: 16)),
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account?'),
                    SizedBox(width: 5),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  RegisterScreen()),
                      );
                    }, child: Text('Sign up'))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
