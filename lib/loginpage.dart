import 'package:flutter/material.dart';
import 'package:myapp/screens/login_mobile.dart';
import 'package:myapp/screens/login_tablet.dart' show LoginTablet;
import 'package:myapp/screens/login_web.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:
          ResponsiveBreakpoints.of(context).isMobile
              ? const LoginMobile()
              : ResponsiveBreakpoints.of(context).isTablet
              ? const LoginTablet()
              : const LoginWeb(),
    );
  }
}
