import 'dart:ui';

import 'package:flutter/material.dart';
import 'Theme.dart';

class login_page extends StatelessWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool passkosong = false;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/images/BGlogin.png"),
                          fit: BoxFit.cover)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "Assets/images/BGL.png",
                        height: MediaQuery.of(context).size.height / 2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "Assets/images/Logo.png",
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        "Welcome",
                        style:
                            Regular.copyWith(fontSize: 32, color: Colors.white),
                      ),
                      Text(
                        "Sign in to Continue",
                        style: Extralight.copyWith(
                            fontSize: 24, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(children: [
              Container(
                color: Blue,
                height: MediaQuery.of(context).size.height / 1.9,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 40, right: 40, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: Regular.copyWith(fontSize: 13),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: Regular.copyWith(fontSize: 13),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: passkosong
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Colors.black,
                                          )
                                        : Icon(Icons.visibility),
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              margin: EdgeInsets.only(top: 20),
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Red,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 10)),
                                  onPressed: () {},
                                  child: Text("Login"))),
                          Row(children: [
                            Column(
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Sign Up",
                                      style: Regular.copyWith(
                                          fontSize: 12, color: Colors.black),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Forgot Password",
                                      style: Regular.copyWith(
                                          fontSize: 12, color: Colors.black),
                                    ))
                              ],
                            )
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
