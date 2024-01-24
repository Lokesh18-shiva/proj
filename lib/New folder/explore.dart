import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proj/channel.dart';
import 'explorecard.dart';
import 'apiservices.dart';

final userDataProvider = FutureProvider<List<Channel>>((ref) async {
  var data = await ref.watch(apiDataRetrive2).getFeed('JSON/channel.json');
  return data;
});

class Explore extends ConsumerWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data1 = ref.watch(userDataProvider);
    return data1.when(
        data: (data1) {
          return Column(
            children: [
              Row(
                children: [
                  ExploreCard(
                    img: data1[0].imageUrl.toString(),
                    name: data1[0].name.toString(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 66),
                    child: ExploreCard(
                        img: data1[1].imageUrl.toString(),
                        name: data1[1].name.toString()),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: ExploreCard(
                        img: data1[2].imageUrl.toString(),
                        name: data1[2].name.toString()),
                  )
                ],
              ),
            ],
          );
        },
        error: (error, s) => Text(error.toString()),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
