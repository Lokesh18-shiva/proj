import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '/CardModel.dart';
// import 'package:http/http.dart';
import 'package:proj/popularmodel.dart';
import 'cardmodel.dart';
import 'channel.dart';
import 'Feedmodel.dart';

import 'package:flutter/services.dart' show rootBundle;

class ApiServices {
  Future<List<FeedApI>> getFeed(endpiont) async {
    String jsonData = await rootBundle.loadString(endpiont);

    final List result = jsonDecode(jsonData);
    return result
        .map((e) => FeedApI.fromJson(e))
        .toList(); // to sent json data through the map
  }
}

// class ApiServices1 {
//   Future<List<PopularModel>> getFeed(endpiont) async {
//     Response request = await get(Uri.parse(endpiont));
//     if (request.statusCode == 200) {
//       final List result = jsonDecode(request.body);
//       return result
//           .map((e) => PopularModel.fromJson(e))
//           .toList(); // to sent json data through the map
//     } else {
//       throw Exception(request.reasonPhrase);
//     }
//   }
// }
class ApiServices1 {
  Future<List<PopularModel>> getFeed(endpiont) async {
    String jsonData = await rootBundle.loadString(endpiont);
    final List result = jsonDecode(jsonData);
    return result
        .map((e) => PopularModel.fromJson(e))
        .toList(); // to sent json data through the map
  }
}

class ApiServices2 {
  Future<List<Channel>> getFeed(endpiont) async {
    String jsonData = await rootBundle.loadString(endpiont);

    final List result = jsonDecode(jsonData);
    return result
        .map((e) => Channel.fromJson(e))
        .toList(); // to sent json data through the map
  }
}

class ApiServices3 {
  Future<List<card>> getFeed(endpiont) async {
    String jsonData = await rootBundle.loadString(endpiont);

    final List result = jsonDecode(jsonData);
    return result
        .map((e) => card.fromJson(e))
        .toList(); // to sent json data through the map
  }
}


final apiDataRetrive = Provider<ApiServices>((ref) => ApiServices());
final apiDataRetrive1 = Provider<ApiServices1>((ref) => ApiServices1());
final apiDataRetrive2 = Provider<ApiServices2>((ref) => ApiServices2());
final apiDataRetrive3 = Provider<ApiServices3>((ref) => ApiServices3());
