import 'package:flutter/foundation.dart';

import 'category.dart';
import 'querry.dart';
import 'package:flutter/material.dart';

class CategoryDetail extends StatefulWidget {
  Querry querry;

  CategoryDetail({
    Key? key,
    required this.querry,
  }) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<CategoryDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Category"),
      ),
      body: SafeArea(
        child: Text("hlep"),
      ),
    );
  }
}
