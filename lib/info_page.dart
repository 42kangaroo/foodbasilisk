import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Info"),
      ),
      body: SafeArea(
        child: Text(
            """FoodBasilisk soll die unkomplizierte Auswahl eines Restaurants"""
            """ermöglichen. Dies wird durch eine einfache und effiziente Benutzeroberfläche erreicht. Die App läuft mit einer online gespeicherten, hard-codierten Liste""",
            style: TextStyle(fontSize: 18)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
        tooltip: 'Back',
        child: const Icon(Icons.arrow_back_outlined),
      ),
    );
  }
}
