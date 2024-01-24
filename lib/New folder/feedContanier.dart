import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FeedConTainer extends StatelessWidget {
  double left = 0;
  String text = '';
  String imgadrr = '';
  FeedConTainer(
      {super.key,
      required this.left,
      required this.text,
      required this.imgadrr});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
      ),
      child: Column(
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffFEDA75),
                Color(0xffFA7E1E),
                Color(0xffD62976),
                Color(0xff962FBF),
                Color(0xff4F5BD5)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(imgadrr),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(text,
          maxLines: 2,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ))
        ],
      ),
    );
  }
}
