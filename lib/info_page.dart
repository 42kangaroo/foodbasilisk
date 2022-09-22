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
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            textAlign: TextAlign.center,
            "FoodBasilisk soll die unkomplizierte Auswahl eines Restaurants ermöglichen. Dies wird durch eine einfache und effiziente Benutzeroberfläche erreicht. Die App läuft mit einer online gespeicherten, hard-codierten Liste, zu der man als User laufend Restaurants hinzufügen kann. Wir haben diese Application kreiert um Schülern am Gymnasium Bäumlihof eine Plattform zu geben, um Varietät  in ihr Mittagessen zu bringen und troztdem auf das eigene Budget rücksicht zu nehmen.",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
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
