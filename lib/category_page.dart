import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'settings.dart';
import 'category.dart';
import 'querry.dart';
import 'distance_page.dart';

class CategoryDetail extends StatefulWidget {
  final Querry querry;

  const CategoryDetail({
    Key? key,
    required this.querry,
  }) : super(key: key);

  @override
  _CategoryDetailState createState() {
    return _CategoryDetailState();
  }
}

class _CategoryDetailState extends State<CategoryDetail> {
  Card createCard(EatCategory category) {
    return Card(
      child: Column(
        children: [
          Image(image: category.icon),
          Text(
            category.category,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Category"),
      ),
      body: SafeArea(
        child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            children: List.generate(
              categories.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    Querry updatedQuerry = widget.querry;
                    updatedQuerry.category = categories[index].category;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DistancePage(querry: updatedQuerry);
                    }));
                  },
                  child: createCard(categories[index]),
                );
              },
            )),
      ),
    );
  }
}
