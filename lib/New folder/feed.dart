import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proj/Feedmodel.dart';

import 'apiservices.dart';
import 'feedContanier.dart';

final userDataProvider = FutureProvider<List<FeedApI>>((ref) async {
  var data=await ref.watch(apiDataRetrive).getFeed('JSON/feed.json');
  return data;
});

class Feed extends ConsumerWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data1 = ref.watch(userDataProvider);
    return data1.when(
        data: (data1) {
          return SizedBox(
            height: 119,
            width: double.infinity,
            child: Row(
              children: [
                FeedConTainer(
                  left: 0,
                  text: data1[0].name.toString(),
                  imgadrr: data1[0].iconUrl.toString(),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data1.length - 1,
                    itemBuilder: (context, index) {
                      FeedApI model = data1[index + 1];

                      return FeedConTainer(
                        imgadrr: model.iconUrl.toString(),
                        left: 16,
                        text: model.name.toString(),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
        error: (error, s) => Text(error.toString()),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
