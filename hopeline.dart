import 'package:flutter/material.dart';
import 'package:navigatorpop_page/signin.dart';

class Hopeline extends StatefulWidget {
  const Hopeline({super.key});

  @override
  State<Hopeline> createState() => _HopelineState();
}

class _HopelineState extends State<Hopeline> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          color: const Color.fromARGB(255, 53, 2, 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * 0.22,
                width: width * 0.44,
                decoration: BoxDecoration(
                  
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                    
                  ),
                   image: DecorationImage(
                    image: AssetImage('assets/images/hopeline.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                 child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Signin(),
                      ),);
          },
         
        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
