import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "SIGNUP",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 105, 150, 34)),
              ),
            ),
            Center(
              child: Text(
                "SCREEN",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 105, 150, 34)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cEmail,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cPass,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                cAuth.signup(controller.cEmail.text, controller.cPass.text);
              },
              child: Text("Signup"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 105, 150, 34),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
