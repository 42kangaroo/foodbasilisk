import 'package:flutter/cupertino.dart';

import 'package:flutter/widgets.dart';



class EatCategory {
  AssetImage icon = AssetImage("");
  String category = "";

  EatCategory(this.icon, this.category);

  EatCategory.fromJson(Map<String, dynamic> json)
      : icon = AssetImage(json['icon']),
        category = json['category'];

  Map<String, dynamic> toMap() => {
        'icon': icon.assetName,
        'category': category,
      };
}

