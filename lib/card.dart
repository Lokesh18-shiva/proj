import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(home:MyWidget() ,));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 340,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image5.png'))),
                )
              ],
            ),),
        ],
      ),
      appBar: AppBar(
        
      ),
    );
  }
}
