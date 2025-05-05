// Suggested code may be subject to a license. Learn more: ~LicenseLog:1385634000.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3390244931.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1477960577.
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff0b4778), Color(0xff0b476e)],
                    stops: [0.25, 0.75],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: constraints.maxHeight * 0.3,
                width: constraints.maxWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: Theme.of(
                        context,
                      ).textTheme.displayMedium!.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text("Welcome Back", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Positioned(                   

                top: constraints.maxHeight * 0.30,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  height: constraints.maxHeight * 0.7,
                  width: constraints.maxWidth,
                  child: Column(
                    children: [
                      SizedBox(height: constraints.maxHeight * .07),
                      SizedBox(
                        width: constraints.maxWidth * .7,
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(filled: false),
                              ),
                              Divider(),
                              TextField(
                                decoration: InputDecoration(filled: false),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * .07),
                      Text("Forgot Password"),
                      SizedBox(height: constraints.maxHeight * .02),
                      SizedBox(
                        width: 200,
                        child: FilledButton(
                          onPressed: () {},
                          child: Text("Login"),
                        ),
                      ),
                      Text("Continue with social media"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 60,
                            child: FlutterSocialButton(
                              onTap: () {},
                              buttonType:
                                  ButtonType
                                      .google, // Button type for different type buttons
                              iconColor:
                                  Colors.black, // for change icons colors
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: FlutterSocialButton(
                              onTap: () {},
                              buttonType:
                                  ButtonType
                                      .google, // Button type for different type buttons
                              iconColor:
                                  Colors.black, // for change icons colors
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
