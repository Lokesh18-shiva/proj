import 'package:flutter/material.dart';
import 'package:proj/card.dart';
import 'package:proj/feed.dart';

import 'Footer.dart';
import 'TextinHome.dart';
import 'explore.dart';
import 'gridv.dart';
import 'slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: 
      BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
              label: "Home", icon: Image.asset('assets/Home.png')),
          BottomNavigationBarItem(
              label: "Support",
              icon: Stack(
                children: [
                  Image.asset(
                    'assets/User-clock.png',
                    width: 24,
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 9, left: 9, bottom: 1, right: 1),
                    child: Image.asset(
                      'assets/Settings.png',
                      width: 14,
                      height: 14,
                    ),
                  ),
                ],
              )),
          BottomNavigationBarItem(
              label: "Account", icon: Image.asset('assets/Ellipse 131.png'))
        ],
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff901020),
        toolbarHeight: 76,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 36),
                child: Image(
                  image: AssetImage('assets/Location.png'),
                  height: 24,
                  width: 24,
                )),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          fontFamily: "Calibri"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image(
                      image: AssetImage('assets/chevron-down.png'),
                      height: 24,
                      width: 24,
                    )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Kurla,Mumbai,mahara...",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Calibri"),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        actions: const [
          // Container(
          //     child: const Text(
          //   "My orders",
          //   style: TextStyle(
          //     fontSize: 12,
          //     fontWeight: FontWeight.w600,
          //   ),
          // )),
          Padding(
              padding: EdgeInsets.only(
                top: 18,
                bottom: 19,
                right: 16,
              ),
              child: Image(
                image: AssetImage(
                  'assets/search.png',
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
        child: GlowingOverscrollIndicator(
          
          axisDirection: AxisDirection.down, // Adjust as needed
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Feed(),
                SizedBox(
                  height: 16,
                ),
                MovSlider(),
                TextInField(
                  top: 16,
                  text: 'Explore ',
                  size: 20,
                ),
                Explore(),
                TextInField(
                  top: 16,
                  text: 'Eat what you love ',
                  size: 20,
                ),
                const Eatwhatyoulove(),
                TextInField(
                  top: 16,
                  text: "Celebrate with Qmin ",
                  size: 20,
                ),cardview(),
                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
