import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
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
                "RESET PASSWORD",
                style: TextStyle(
                    fontSize: 25,
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
            ElevatedButton(
              onPressed: () {
                cAuth.resetPassword(controller.cEmail.text);
              },
              child: Text("Reset Password"),
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
