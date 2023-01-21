import 'package:flutter/material.dart';
import 'package:udhyog4/dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
// Figma Flutter Generator LoginScreen - FRAME
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 35, 5, 0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/logo1.png',
                                height: 85,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/logo2.png',
                                height: 90,
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: Colors.white,
                      height: 120,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
              child: Text(
                'Udhyog 4.0 (U4) is a start-up initiation by professionals in 2019, and mainly provides technological solutions related to emerging technologies such as industry 4.0. This is turn transform existing industrial setup into SMART and sustainable manufacturing setup.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: TextField(
                controller: username,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      size: 32,
                      color: Color.fromARGB(255, 24, 112, 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(width: 1.7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(width: 1.7),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: Colors.grey[800], fontWeight: FontWeight.w400),
                    hintText: "Username",
                    fillColor: Colors.grey[400]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 10, 17, 15),
              child: TextField(
                controller: password,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 32,
                      color: Color.fromARGB(255, 24, 112, 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(width: 1.7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(width: 1.7),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: Colors.grey[800], fontWeight: FontWeight.w400),
                    hintText: "Password",
                    fillColor: Colors.grey[400]),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement<void, void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Dashboard(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 24, 112, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
