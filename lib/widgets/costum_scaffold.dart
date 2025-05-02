import 'package:flutter/material.dart';

class CostumScaffold extends StatelessWidget {
  final Widget child;
  const CostumScaffold({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg1.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SafeArea(child: child)
        ],
      
      ),
    
    );
  }
}
