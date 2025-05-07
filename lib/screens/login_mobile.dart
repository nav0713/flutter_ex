// Suggested code may be subject to a license. Learn more: ~LicenseLog:1385634000.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3390244931.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1477960577.
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {

 
        return Container(
                   height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
                      
          child: Column(
            children: [
              SizedBox(height: 200),
              SizedBox(
             height: 250,
             width: 300,
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
      
              Text("Forgot Password"),
              SizedBox(height: 50),
              SizedBox(
                width: 200,
                child: FilledButton(
                  onPressed: () {},
                  child: Text("Login"),
                ),
              ),
              Text("Continue with social media"),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: SizedBox(
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
                    ),
                    SizedBox(width: 20,),
                    Flexible( 
                      child: SizedBox(
                       
                        child: FlutterSocialButton(
                          onTap: () {},
                          buttonType:
                              ButtonType
                                  .google, // Button type for different type buttons
                          iconColor:
                              Colors.black, // for change icons colors
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      
   
    );
  }
}