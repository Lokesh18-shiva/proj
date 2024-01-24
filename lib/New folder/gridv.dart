import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proj/popularmodel.dart';
import 'apiservices.dart';

final userDataProvider = FutureProvider<List<PopularModel>>((ref) async {
  var data = await ref.watch(apiDataRetrive1).getFeed('JSON/popular.json');
  return data;
});

class Eatwhatyoulove extends ConsumerWidget {
  const Eatwhatyoulove({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data1 = ref.watch(userDataProvider);

    return data1.when(
        data: (data1) {
          return Container(
            child: GridView.count(
              primary: false,
              shrinkWrap: true,
              crossAxisCount: 3, // Number of columns in the grid
              children: List.generate(data1.length, (index) {
                PopularModel model = data1[index];
                return SizedBox(
                    width: 99,
                    height: 120,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 6, right: 1, top: 4, bottom: 4),
                                  child: Container(
                                      width: 99,
                                      height: 95,
                                      decoration: BoxDecoration(
                                          // color: Color.fromARGB(255, 238, 6, 6),
                                          border: Border.all(
                                              width: 1,
                                              color: const Color(0xffAD9189)),
                                          borderRadius:
                                              BorderRadius.circular(86)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 6,
                                        ),
                                        child: CircleAvatar(
                                            radius: 43.5,
                                            backgroundImage: NetworkImage(
                                                model.iconUrl.toString())),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 1, right: 6, top: 4, bottom: 4),
                                  child: Container(
                                      width: 99,
                                      height: 95,
                                      decoration: BoxDecoration(
                                          // color: Colors.black,
                                          border: Border.all(
                                              width: 1,
                                              color: const Color(0xffAD9189)),
                                          borderRadius:
                                              BorderRadius.circular(86))),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/Image.png",
                            //   width: 87,
                            //   height: 87,
                            // )
                          ],
                        ),
                        Text(model.curationName.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'ProximaNovaA',
                            ))
                      ],
                    ));
              }),
            ),
          );
        },
        error: (error, s) => Text(error.toString()),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
