import 'package:flutter/foundation.dart';

class ShopItem {
  final String title;
  final int quantity;
  final double perItemPrice;

  const ShopItem({
    @required this.title,
    @required this.quantity,
    @required this.perItemPrice,
  });
}
