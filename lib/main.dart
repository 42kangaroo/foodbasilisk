import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'add_page.dart';
import 'category_page.dart';
import 'querry.dart';
import 'price_enum.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var db = FirebaseFirestore.instance;
  await db.collection("restaurants").limit(1).get().then((value) {
    print("fetch success");
  });
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
        primarySwatch: Colors.grey,
        fontFamily: "Gotham",
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
  Querry querry = Querry("", -1, price.NO_RESTRICTION);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BaselMunster.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CategoryDetail(querry: querry);
                  }));
                },
                child: const Text(
                  "Start Search",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddPage();
          }));
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
