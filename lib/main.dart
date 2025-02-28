import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_page.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
