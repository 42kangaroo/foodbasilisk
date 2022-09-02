import 'package:flutter/material.dart';
import 'category_page.dart';
import 'querry.dart';

void main() {
  runApp(const FoodBasilisk());
}

class FoodBasilisk extends StatelessWidget {
  const FoodBasilisk({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodbasilisk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Foodbasilisk'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Querry querry = Querry();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryDetail(querry: querry);
                }));
              },
              child: const Text("Start Search",
              style: TextStyle(color: Colors.white, fontSize: 20.0),),
            ),
          ],
        ),
      ),
    );
  }
}
