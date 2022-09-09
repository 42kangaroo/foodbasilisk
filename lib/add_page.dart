import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'price_enum.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'restaurant.dart';
import 'settings.dart';

class AddPage extends StatefulWidget {
  FirebaseFirestore db;

  AddPage({
    Key? key,
  })  : db = FirebaseFirestore.instance,
        super(key: key);

  @override
  _AddPageState createState() {
    return _AddPageState();
  }
}

class _AddPageState extends State<AddPage> {
  Restaurant resto =
      Restaurant(Image.network(""), "", ["Döner"], "", 5, price.MIDDLE, "");
  List<String> weekdays = List<String>.from(["", "", "", "", "", "", ""]);

  Padding makeWeekday(String weekday, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Row(
        children: [
          Expanded(
              child: Text(
            weekday,
            style: TextStyle(fontSize: 20),
          )),
          Expanded(
            flex: 3,
            child: TextField(
              onChanged: (val) => weekdays[index] = val,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '9:00 - 12:00',
              ),
            ),
          )
        ],
      ),
    );
  }

  bool checkEverything() {
    bool days = true;
    for (String day in weekdays) {
      days &= day != "";
    }
    return resto.address != "" &&
        resto.categories[0] != "" &&
        (resto.image.image as NetworkImage).url != "" &&
        resto.label != "" &&
        days;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a new Restaurant"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Lable:",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        onChanged: (val) => resto.label = val,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter the name of the restaurant',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text(
                      "Image Url:",
                      style: TextStyle(fontSize: 20),
                    )),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        onChanged: (val) => resto.image = Image.network(val),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'https://google.com',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text(
                      "Category:",
                      style: TextStyle(fontSize: 20),
                    )),
                    Expanded(
                      flex: 3,
                      child: DropdownButton(
                        value: resto.categories[0],
                        items: categories
                            .map((EatCategory item) => DropdownMenuItem(
                                value: item.category,
                                child: Text(item.category)))
                            .toList(),
                        onChanged: (String? val) {
                          setState(() {
                            resto.categories[0] = val!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text(
                      "Address:",
                      style: TextStyle(fontSize: 20),
                    )),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        onChanged: (val) => resto.address = val,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Zu den Drei Linden 60, 4058 Basel',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Distance: ${resto.distance} min",
                      style: const TextStyle(fontSize: 20),
                    )),
                    Expanded(
                      flex: 3,
                      child: Slider(
                        // 1
                        min: 5,
                        max: 25,
                        divisions: 4,
                        // 2
                        label: 'Choose your distance in minutes',
                        // 3
                        value: resto.distance.toDouble(),
                        // 4
                        onChanged: (newValue) {
                          setState(() {
                            resto.distance = newValue.round();
                          });
                        },
                        // 5
                        activeColor: Colors.green,
                        inactiveColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Price: ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            resto.p = price.LOW;
                          });
                        },
                        child: Card(
                          shadowColor: (resto.p == price.LOW
                              ? Colors.blue
                              : Colors.black),
                          elevation: 7,
                          child: Column(
                            children: const [
                              Icon(
                                Icons.attach_money,
                                size: 50,
                              ),
                              Text(
                                "Low",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            resto.p = price.MIDDLE;
                          });
                        },
                        child: Card(
                          shadowColor: (resto.p == price.MIDDLE
                              ? Colors.blue
                              : Colors.black),
                          elevation: 7,
                          child: Column(
                            children: const [
                              Icon(
                                Icons.money,
                                size: 50,
                              ),
                              Text(
                                "Medium",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            resto.p = price.NO_RESTRICTION;
                          });
                        },
                        child: Card(
                          shadowColor: (resto.p == price.NO_RESTRICTION
                              ? Colors.blue
                              : Colors.black),
                          elevation: 7,
                          child: Column(
                            children: const [
                              Icon(
                                Icons.price_change_outlined,
                                size: 50,
                              ),
                              Text(
                                "High",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Text(
                  "Opening Hours",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              makeWeekday("Monday", 0),
              makeWeekday("Tuesday", 1),
              makeWeekday("Wednesday", 2),
              makeWeekday("Thursday", 3),
              makeWeekday("Friday", 4),
              makeWeekday("Saturday", 5),
              makeWeekday("Sunday", 6),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          resto.hours = "Monday: ${weekdays[0]} \n"
              "Tuesday: ${weekdays[1]}\n"
              "Wednesday: ${weekdays[2]}\n"
              "Thursday: ${weekdays[3]}\n"
              "Friday: ${weekdays[4]}\n"
              "Saturday: ${weekdays[5]}\n"
              "Sunday: ${weekdays[6]}\n";
          if (!checkEverything()) {
            Alert(
                    context: context,
                    title: "Error",
                    desc: "Please fill in everything")
                .show();
            return;
          }
          widget.db.collection("restaurants").add(resto.toMap()).then(
              (DocumentReference doc) =>
                  print('DocumentSnapshot added with ID: ${doc.id}'));
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
