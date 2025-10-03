import 'package:flutter/material.dart';
import 'package:navigatorpop_page/forgot.dart';
import 'package:navigatorpop_page/hopeline.dart';
import 'package:navigatorpop_page/signin.dart';
import 'package:navigatorpop_page/signup.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          children: [Hopeline(),Signin(),Signup(),Forgot()],
        ),
      ),
    );
  }
}
