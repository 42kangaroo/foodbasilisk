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
  List<TextEditingController> controllers =
      List<TextEditingController>.generate(
          11, (index) => TextEditingController());

  void reset() {
    resto =
        Restaurant(Image.network(""), "", ["Döner"], "", 5, price.MIDDLE, "");
    weekdays = List<String>.from(["", "", "", "", "", "", ""]);
    controllers = List<TextEditingController>.generate(
        11, (index) => TextEditingController());
  }

  Padding makeWeekday(String weekday, int index) {
    return makeTextFieldQuestion(
        weekday,
        "9:00 - 12:00",
        (val) => setState(() {
              weekdays[index] = val;
            }),
        controllers[index + 4]);
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

  Expanded makePrice(String asset, String name, price p) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            resto.p = p;
          });
        },
        child: Card(
          shadowColor: (resto.p == p ? Colors.blueGrey : Colors.black),
          elevation: 7,
          child: Column(
            children: [
              Image.asset(asset),
              Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded makeText(String text) {
    return Expanded(
      child: Text(
        text,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }

  Padding makeTextFieldQuestion(String question, String hint,
      void Function(String) fieldChanger, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Row(
        children: [
          makeText(question),
          Expanded(
            flex: 3,
            child: TextField(
              onChanged: fieldChanger,
              controller: controller,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          (controller.text.isEmpty ? Colors.red : Colors.green),
                      width: 1.0),
                ),
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding makeDropdownButton(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: DropdownButton(
          value: resto.categories[index],
          items: categories
              .map((EatCategory item) => DropdownMenuItem(
                  value: item.category,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(item.category))))
              .toList(),
          onChanged: (String? val) {
            setState(() {
              resto.categories[index] = val!;
            });
          },
          isExpanded: true,
          underline: SizedBox(),
        ),
      ),
    );
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
              makeTextFieldQuestion(
                  "Label:", 'Enter the name of the restaurant', (val) {
                resto.label = val;
                setState(() {});
              }, controllers[0]),
              makeTextFieldQuestion("Image Url:", "https://google.com", (val) {
                resto.image = Image.network(val);
                setState(() {});
              }, controllers[1]),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  crossAxisAlignment: (resto.categories.length > 2
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center),
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text("Category:",
                              style: TextStyle(fontSize: 15)),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 5),
                            child: TextButton(
                              onPressed: () {
                                resto.categories.add("Döner");
                                setState(() {});
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              child: const Text(
                                "Add",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          (resto.categories.length > 1
                              ? Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 10, 5),
                                  child: TextButton(
                                    onPressed: () {
                                      resto.categories.removeLast();
                                      setState(() {});
                                    },
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.grey),
                                    child: const Text(
                                      "Remove",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                )
                              : const SizedBox())
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(resto.categories.length,
                            (index) => makeDropdownButton(index)),
                      ),
                    ),
                  ],
                ),
              ),
              makeTextFieldQuestion(
                  "Address:", 'Zu den Drei Linden 60, 4058 Basel', (val) {
                resto.address = val;
                setState(() {});
              }, controllers[3]),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    makeText("Distance: ${resto.distance} min"),
                    Expanded(
                      flex: 3,
                      child: Slider(
                        min: 5,
                        max: 25,
                        divisions: 4,
                        label: 'Choose your distance in minutes',
                        value: resto.distance.toDouble(),
                        onChanged: (newValue) {
                          setState(() {
                            resto.distance = newValue.round();
                          });
                        },
                        activeColor: Colors.blueGrey,
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
                    makeText("Price:"),
                    makePrice("assets/LOW.png", "Low", price.LOW),
                    makePrice("assets/MEDIUM.png", "Middle", price.MIDDLE),
                    makePrice("assets/HIGH.png", "High", price.NO_RESTRICTION),
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
          widget.db
              .collection("restaurants")
              .add(resto.toMap())
              .then((DocumentReference doc) {
            Alert(
                    context: context,
                    title: "Success",
                    desc: "The new restaurant was added without problems")
                .show();
          });
          reset();
          setState(() {});
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
