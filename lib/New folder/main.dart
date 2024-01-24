import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proj/Home_Page.dart';

void main() => runApp(const ProviderScope(
  child:    MaterialApp(
  
        debugShowCheckedModeBanner: false,
  
        home: Qminhome(),
  
      ),
));

class Qminhome extends StatelessWidget {
  const Qminhome({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff901020),
    ));
    return const HomePage();
  }
}
