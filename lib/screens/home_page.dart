import 'package:flutter/material.dart';
import 'package:toku_app/components/category.dart';
import 'package:toku_app/screens/numbers_page.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          title: const Text(
            "Toku",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          children: [
            Category(
              text: 'Numbers',
              color: Colors.orange,
              onTap: () {
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).push(MaterialPageRoute(builder: (context) => NumbersPage()));
              },
            ),
            Category(text: 'Family Members', color: Colors.green),
            Category(text: 'Colors', color: Colors.purple),
            Category(text: 'phrases', color: Colors.lightBlue),
          ],
        ),
      ),
    );
  }
}
