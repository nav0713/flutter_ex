import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:myapp/utils/theme.dart';
import 'package:myapp/widgets/costum_scaffold.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool rememberPassword = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CostumScaffold(
        child: Column(
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            )),
        Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.fromLTRB(
                25.0,
                50.0,
                25.0,
                20.0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Form(
                  key: formKey,
                  child: Column(
                    spacing: 25,
                    children: [
                      Text(
                        "Welcome back",
                        style: TextStyle(
                            color: lightColorScheme.primary,
                            fontWeight: FontWeight.w900,
                            fontSize: 32),
                      ),
                      TextFormField(decoration: formDecoration()),
                      TextFormField(
                          obscureText: true,
                          decoration: formDecoration().copyWith(
                              hintText: "Enter Password",
                              label: Text("Password"))),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              RepaintBoundary(
                                child: Checkbox(
                                  value: rememberPassword,
                                  onChanged: (remember) {
                                    setState(() {
                                    rememberPassword = remember!;
                                    });
                                  },
                                  activeColor: lightColorScheme.primary,
                                ),
                              ),
                              Text(
                                "Remember me",
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: lightColorScheme.primary,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Adjust the radius
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15), // Adjust padding
                             backgroundColor: lightColorScheme.primary// Text color
                            ),
                            child: Text("Sign In"),
                          )),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: .7,
                            color: Colors.black38,
                          )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Sign In with"),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: .7,
                            color: Colors.black38,
                            height: 1,
                          )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 42,
                        children: [
                          Brand(Brands.facebook),
                          Brand(Brands.twitter),
                          Brand(Brands.google),
                          Brand(Brands.apple_logo)
                        ],
                      )
                    ],
                  )),
            ))
      ],
    ));
  }
}
