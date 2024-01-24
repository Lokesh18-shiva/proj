import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreCard extends StatelessWidget {
  String img;
  String name;
   ExploreCard({super.key, required this.img,required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 202,
      width: 156,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: NetworkImage(img))
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 139),
            child: Image.asset(
              'assets/Wave Pattern.png',
              height: 63,
              width: double.infinity,
            ),
          ),
           Padding(
            padding:const EdgeInsets.only(top: 157, bottom: 26, right: 54, left: 8),
            child: SizedBox(
              child: Text(name,
                  style: const TextStyle(
                    fontFamily: "ProximaNovaA",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 178, bottom: 8, right: 35, left: 8),
            child: Text(" ₹200 Onwards",
                style: TextStyle(
                  fontFamily: "ProximaNovaA",
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          )
        ],
      ),
    );
  }
}
