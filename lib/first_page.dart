import 'package:flutter/material.dart';
import 'package:musica/forgetpassword.dart';
import 'package:musica/signup.dart';

import 'bottom_navbar.dart';

// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class First_Page extends StatelessWidget {
  const First_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF3566),
      // appBar: AppBar(
      //   title: const Text("Dashboard"),
      //   actions: const [],
      // ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/headphone.png",
              width: 500.0,
              opacity: const AlwaysStoppedAnimation(.5),
              // height: 500.0,
              fit: BoxFit.fill,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Swipe up to\nexplore the world\nof music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                ElevatedButton(
                  child: const Icon(
                    color: Colors.black,
                    Icons.keyboard_double_arrow_up,
                    size: 40.0,
                  ),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height,
                          // height: 9000,
                          color: const Color(0xffFF3566),

                          child: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/headphone.png",
                                  opacity: const AlwaysStoppedAnimation(.5),
                                  width: 232.0,
                                  height: 250.0,
                                  fit: BoxFit.fill,
                                ),
                                const Text(
                                  textAlign: TextAlign.start,
                                  "Hello,\nWelcome Back",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 36),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30))),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        const Text(
                                          "Email",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16)),
                                                borderSide: BorderSide(
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                            onChanged: (value) {},
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const Text(
                                          "Password",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(),
                                          child: Container(
                                            margin: const EdgeInsets.only(),
                                            child: TextFormField(
                                              decoration: const InputDecoration(
                                                labelStyle: TextStyle(
                                                  color: Colors.blueGrey,
                                                ),
                                                suffixIcon: Icon(
                                                  Icons.visibility,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(16)),
                                                  borderSide: BorderSide(
                                                    color: Colors.blueGrey,
                                                  ),
                                                ),
                                              ),
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      (const Forget_Password())),
                                            );
                                          },
                                          child: const Text(
                                            "Forgot your password?",
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                minimumSize:
                                                    const Size.fromHeight(50),
                                                backgroundColor:
                                                    const Color(0xffFF3566),
                                                shape:
                                                    ContinuousRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          (const BottomTabpage())),
                                                );
                                              },
                                              child: const Text(
                                                "Login",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                                "Don’t have an account?"),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          (const SignUp_page())),
                                                );
                                              },
                                              child: const Text(
                                                "Sign up",
                                                style: TextStyle(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
