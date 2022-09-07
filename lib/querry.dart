import 'price_enum.dart';

class Querry {
  String category = "";
  int distance = -1;
  price p = price.NO_RESTRICTION;

  Querry(this.category, this.distance, this.p);
}
