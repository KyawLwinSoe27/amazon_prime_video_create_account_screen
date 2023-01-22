import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccount(),
    ),
  );
}

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(16, 23, 30, 1.0),
          leading: const Center(
              child: Text(
            "Back",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromRGBO(29, 168, 249, 1.0),
            ),
          )),
          title: Image.asset('assets/images/amazon-prime-now.png', width: 70),
          actions: const [Icon(Icons.change_circle_outlined)]),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        color: const Color.fromRGBO(16, 23, 30, 1.0),
        child: Column(
          children: [
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Create account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),

            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(254, 254, 254, 1.0),
                hintText: "Name",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(77, 79, 109, 1.0),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(254, 254, 254, 1.0),
                hintText: "Your Email Address",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(77, 79, 109, 1.0),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(254, 254, 254, 1.0),
                hintText: "Create a Password",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(77, 79, 109, 1.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(
                  Icons.info_outlined,
                  size: 20,
                  color: Color.fromRGBO(45, 113, 140, 1.0),
                ),
                SizedBox(width: 10),
                Text(
                  "Password must be at least 6 characters",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            TextButton(
              onPressed: () {
                print("Create Account Button Tapped");
              },
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(26, 121, 173, 1.0),
                  fixedSize: const Size(400, 50)),
              child: const Text(
                "Create your Amazon account",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website",
              style: TextStyle(color: Color.fromRGBO(121, 141, 153, 1.0)),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text("Already have an account?",
                style: TextStyle(color: Colors.white)),
            const SizedBox(height: 18),
            TextButton(
              onPressed: () {
                print("Sign In Now Button Tapped");
              },
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(63, 77, 94, 1.0),
                  fixedSize: const Size(400, 50)),
              child: const Text(
                "Sign-In Now",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "\u00a9 1996-2021,Amazon.com,Inc. or its affiliates",
              style: TextStyle(color: Color.fromRGBO(132, 154, 167, 1.0)),
            )
          ],
        ),
      ),
    );
  }
}
