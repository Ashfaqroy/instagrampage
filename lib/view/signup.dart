import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_page/controller/signin.dart';

class SignUp extends StatelessWidget {
  final SignInController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpPage(),
    );
  }

  SignUpPage() {
    return Center(child: Text("${c.Count}"));
  }
}
