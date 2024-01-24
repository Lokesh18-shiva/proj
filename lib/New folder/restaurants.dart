import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RestaurantPage(),
  ));
}

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: change
            ? AppBar(
              
                backgroundColor: Colors.white,
                leading: Image.asset(
                  "assets/box2.png",
                  height: 24,
                  width: 24,
                ),
                title: const Text(
                  'ANUKA',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                
                
                elevation: 0,
              )
            : null,
        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification is ScrollUpdateNotification) {
              double scrollPosition = scrollNotification.metrics.pixels;
              if (scrollPosition > 240) {
                setState(() {
                  change = true;
                });
              } else {
                setState(() {
                  change = false;
                });
              }
            }
            return false;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 156,
                      width: double.infinity,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/box1.jpeg"))),
                      ),
                    ),
                    const SizedBox(
                        height: 56,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ANUKA",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  )),
                              Text("TajSats Mumbai",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(height: 8),
                            ],
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 1, color: const Color(0xffAD9189)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, top: 4, bottom: 4),
                              child: Image.asset("assets/Icon.png"),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 8, right: 12, top: 4, bottom: 4),
                              child: Text("Veg",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        height: 25,
                        width: 95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 1, color: const Color(0xffAD9189)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, top: 4, bottom: 4),
                              child: Image.asset("assets/Icon (1).png"),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 8, right: 12, top: 4, bottom: 4),
                              child: Text("Non Veg",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
