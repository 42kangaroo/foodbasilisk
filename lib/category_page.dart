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
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<CategoryDetail> {
  Card createCard(EatCategory category) {
    return Card(
      child: Column(
        children: [Image(image: category.icon), Text(category.category)],
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
        child: ListView.builder(
          itemCount: categorories.length,
          itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Querry updatedQuerry = widget.querry;
              updatedQuerry.category = categorories[index].category;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DistancePage(querry: updatedQuerry);
              }));
            },
            child: createCard(categorories[index]),
          );
        },
        ),
      ),
    );
  }
}
