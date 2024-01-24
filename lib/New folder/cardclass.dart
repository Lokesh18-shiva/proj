import 'package:flutter/material.dart';

class cardcon extends StatelessWidget {
  final String? img;
  final String ?txt;
  final String ?txt2;
   cardcon({super.key,required this.img,this.txt,this.txt2});
  

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: NetworkImage(img.toString()))),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Stack(
                children: [
                  Container(
                      width: 250,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white)),
                  Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8),
                      child: Text(txt.toString(),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700))),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 34,
                    ),
                    child: Text(txt2.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 172.5),
            child: Image(image: AssetImage("assets/image2.png")),
          ),
        ],
      ),
    );
  }
}
