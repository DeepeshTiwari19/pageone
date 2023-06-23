import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pageone/screen.dart';
import 'auth_controller.dart';



class SignInScreen extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _passwordController,
              style: TextStyle(),
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _authController.signIn(
                  _emailController.text,
                  _passwordController.text,

                );
                Get.to(()=>screen());
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}