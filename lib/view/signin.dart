import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_page/controller/signin.dart';
import 'package:get/get.dart';
import 'package:instagram_page/view/signup.dart';

class SignIn extends StatelessWidget {
  final SignInController c = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInPage(),
    );
  }

  SignInPage() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.more_horiz_outlined,
              ),
              SizedBox(),
              Center(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    value: "English",
                    items: <String>['English', 'English(UK)', 'C', 'D']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Obx(() => Text("${c.Count}",
                    style: GoogleFonts.lobsterTwo(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.normal),
                    ))),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.blue[700]),
                      onPressed: () {
                        c.decrese();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook),
                          Text("Continue with Facebook"),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 2,
                      width: 100,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 2,
                      width: 120,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 13),
                          hintText: "Phone number, username, or email",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 13),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.blue[700]),
                      onPressed: () {
                        c.increse();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Log in"),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    InkWell(
                      onTap: () => Get.to(() => SignUp()),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            color: Colors.grey[300],
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text("from",
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                Text(
                  "Facebook",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
