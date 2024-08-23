import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:perfumes_store/components/custom_outline.dart';
import 'package:perfumes_store/constants.dart';
import 'package:perfumes_store/screens/home_page.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defultHight = MediaQuery.of(context).size.height;
    final defultWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: SizedBox(
        height: defultHight,
        width: defultWidth,
        child: Stack(
          children: [
            Positioned(
                top: defultHight * 0.1,
                right: defultWidth * 0.6,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(116, 208, 216, 1),
                      shape: BoxShape.circle),
                  height: defultHight * 0.5,
                  width: defultWidth * 0.7,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
                    child: SizedBox(
                      height: defultHight * 0.3,
                      width: defultWidth * 0.6,
                    ),
                  ),
                )),
            Positioned(
                top: defultHight * 0.4,
                left: defultWidth * 0.1,
                child: Container(
                  height: defultHight * 0.5,
                  width: defultWidth * 0.9,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
                    child: Container(),
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: defultHight * 0.1,
                ),
                Center(
                  child: CustomOutline(
                      strokeWidth: 5,
                      radius: defultWidth * 0.7,
                      gradient: LinearGradient(
                          colors: [Colors.white.withOpacity(0.7), Colors.black],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight),
                      width: defultWidth * 0.7,
                      height: defultWidth * 0.7,
                      padding: const EdgeInsets.all(3),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/mask/perfumLog.jpg'),
                      )),
                ),
                SizedBox(height: defultHight * 0.05),
                Text(
                  'Make Your Smell Special ',
                  style: TextStyle(
                    fontSize: defultHight <= 660 ? 19 : 32, // for small screens
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: defultHight * 0.002,
                ),
                Text(
                  'A world of perfumes and aromatic notes ',
                  style: TextStyle(
                    fontSize: defultHight <= 660 ? 10 : 14, // for small screens
                    fontWeight: FontWeight.w800,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: defultHight * 0.1,
                ),
                GestureDetector(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));} ,
                  child: CustomOutline(
                      strokeWidth: 3.5,
                      radius: 20,
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.3),
                        Colors.black.withOpacity(0.4)
                      ]),
                      width: defultWidth * 0.5,
                      height: defultHight * 0.05,
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Center(
                            child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: defultWidth <= 660 ? 14 : 20),
                          textAlign: TextAlign.center,
                        )),
                      )),
                ),
                const Spacer(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                            color: index == 0
                                ? const Color.fromARGB(255, 56, 183, 192)
                                : index == 1
                                    ? const Color.fromARGB(255, 198, 198, 198)
                                    : const Color.fromARGB(255, 54, 53, 53),
                            shape: BoxShape.circle),
                      );
                    })),
                SizedBox(
                  height: defultHight * 0.05,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
