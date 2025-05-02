import 'package:flutter/material.dart';
import 'package:myapp/screens/signin_screen.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:myapp/utils/theme.dart';
import 'package:myapp/widgets/costum_scaffold.dart';
import 'package:myapp/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CostumScaffold(
        child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: "Welcome Back \n",
                    style:
                        TextStyle(fontSize: 45, fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "Enter Personal details to your employee account\n",
                    style: TextStyle(
                      fontSize: 20,
                    ))
              ])),
        ),
        Row(
          children: [
            Expanded(
                child: WelcomeButton(
              buttonText: "Sign in",
              color: Colors.transparent,
              textColor: darkColorScheme.onPrimary,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return SignInScreen();
                }));
              },
            )),
            Expanded(
                child: WelcomeButton(
              buttonText: "Sign up",
              color: Colors.white,
              textColor: lightColorScheme.primary,
              ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return SignUpScreen();
                }));
              },
            ))
          ],
        )
      ],
    ));
  }
}
