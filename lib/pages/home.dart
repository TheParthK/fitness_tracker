import 'dart:ui';

import 'package:fitness_tracker/pages/track.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 250, 250),
        body: Stack(
          children: [
            const TrackPage(),
            Column(
              children: [
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 80, sigmaY: 20),
                    child: SizedBox(
                      height: devicePadding.top,
                      width: double.infinity,
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  height: devicePadding.bottom + 40,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    // color: Colors.white,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.black, Colors.transparent]
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Google_Bard_logo.svg/2048px-Google_Bard_logo.svg.png'),
                            fit: BoxFit.contain,
                          )
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://gstatic.com/images/branding/product/1x/gfit_512dp.png'),
                            fit: BoxFit.contain,
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override

  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    return Container(
      height: devicePadding.bottom+ 50,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: devicePadding.bottom),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey, width: 0.8))
      ),
    );
  }
}

class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}