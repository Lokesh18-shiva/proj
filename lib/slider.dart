import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proj/TextinHome.dart';
import 'package:provider/provider.dart';


class Changer extends ChangeNotifier {
  int _current = 0;

  void add(index) {
    _current = index;
    notifyListeners();
  }
}

class MovSlider extends StatelessWidget {
  MovSlider({super.key});
  final CarouselController _controller = CarouselController();
  final List<String> slider = [
    ('assets/image5.png'),
    ('assets/image5.png'),
    ('assets/image5.png'),

    // Add more image URLs as needed
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (create) => Changer(),
      child: Builder(builder: (context) {
        final countString = Provider.of<Changer>(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInField(
              top: 0,
              text: "In the Spotlight",
              size: 20,
            ),
            const SizedBox(
              height: 16,
            ),
            CarouselSlider(
              items: slider.map((photos) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        width: double.infinity,
                        photos,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                disableCenter: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: false,
                initialPage: 0,
                height: 200,
                autoPlay: true,
                viewportFraction: 1.0,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayCurve: Curves.fastOutSlowIn,
                onPageChanged: (index, _) {
                  countString._current = index;
                  countString.add(index);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: slider.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.grey
                                : Colors.red)
                            .withOpacity(
                                countString._current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      }),
    );
  }
}
