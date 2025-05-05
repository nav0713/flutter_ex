import 'package:flutter/material.dart';

class LoginWeb extends StatelessWidget {
  const LoginWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
  
        width: 1920,
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
                color: Colors.blue,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Text("Web View")),
            Text('Welcome Back', style: TextStyle(fontSize: 24)),
            SizedBox(height: 24),
            TextField(decoration: InputDecoration(labelText: 'Username')),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(onPressed: null, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
