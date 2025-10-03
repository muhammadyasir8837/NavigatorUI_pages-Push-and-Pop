import 'package:flutter/material.dart';
import 'package:navigatorpop_page/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 28)),
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
              SizedBox(height: height * 0.03),
              Text(
                "Login to your Account",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              SizedBox(height: height * 0.03),
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
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
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
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: width * 0.56),
                    Icon(Icons.password),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170, top: 5),
                child: Text(
                  "Forgot password?",
                  style: TextStyle(fontSize: 16, color: Colors.purple),
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.07,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
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
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.002,
                width: width * 0.7,
                color: Colors.grey,
              ),
              SizedBox(height: height * 0.03),
              Text(
                "Or sign in with",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  //color: Colors.grey,
                ),
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
              SizedBox(height: height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      //color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 74, 10, 85),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
