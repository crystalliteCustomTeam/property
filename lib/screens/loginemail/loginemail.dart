import 'package:flutter/material.dart';
import '../../widegts/LoginFirstScreen/logo.dart';
import '../../widegts/LoginWithEmail/loginfields.dart';
import '../PropertyArchive/propertyarchive.dart';

class LoginwithEmail extends StatelessWidget {
  LoginwithEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logosection('assets/images/logomain2.png'),
          const SizedBox(height: 15),
          const Text(
            "Login to your Account",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 15),
          loginfields(context, Icons.person, "Enter Username Or Password"),
          const SizedBox(height: 15),
          loginfields(context, Icons.lock, "***********",true,Icons.remove_red_eye_outlined),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: true,
                onChanged: (value) => {},
                activeColor: Colors.blue,
              ),
              Text("Remember me",style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 15

              ),)//Checkbox
            ],
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PropertyArchive()),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff007be5),
                padding:
                EdgeInsets.only(top: 20, bottom: 20, left: 80, right: 80),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child:  const Text("Sign in",
                style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
