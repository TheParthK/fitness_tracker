import 'dart:ui';
import 'package:fitness_tracker/pages/track.dart';
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

                // bottom nav bar
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 20),
                    child: Container(
                      padding: EdgeInsets.only(bottom: devicePadding.bottom + 10, left: 15, right: 15, top: 15),
                      // height: devicePadding.bottom + 40,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(20, 0, 0, 0),
                        // color: Color.fromARGB(255, 0, 0, 0),
                        border: Border(top: BorderSide(color: Color.fromARGB(64, 255, 255, 255), width: 0.5))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.list_alt_outlined),
                          Icon(Icons.pie_chart_outline, color: Color.fromARGB(255, 149, 255, 0),),
                        ],
                      ),
                    ),
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