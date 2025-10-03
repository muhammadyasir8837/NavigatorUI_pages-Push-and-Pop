import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Container(
                height: height * 0.14,
                width: width * 0.26,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/hopeline.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140, top: 20),
                child: Text(
                  "Enter Email Address",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ),
              SizedBox(height: height * 0.04),
              Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(255, 241, 237, 237),
                ),

                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
                    Text(
                      "E-mail",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(255, 241, 237, 237),
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: width * 0.56),
                    Icon(Icons.password),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(255, 241, 237, 237),
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: width * 0.39),
                    Icon(Icons.password),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Container(
                height: height * 0.06,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 49, 6, 56),
                ),
                // child: Center(
                //   child: Text(
                //     "Sign In ",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontWeight: FontWeight.w400,
                //       fontSize: 16,
                //     ),
                //   ),
                // ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      "Sign In ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              Text(
                "Forgot your password?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: height * 0.07),
              Text(
                "Don't have an account? ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  //color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Icon(Icons.arrow_forward, color: Colors.amber),
                ],
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.08,
                width: width * 0.5,
                //color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.13,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        image: DecorationImage(
                          image: AssetImage("assets/images/google.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.13,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage("assets/images/facebook.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.13,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage("assets/images/x.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
