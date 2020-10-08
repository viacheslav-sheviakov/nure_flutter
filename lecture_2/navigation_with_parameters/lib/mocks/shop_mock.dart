import 'package:navigation_with_parameters/models/shop_item.dart';

class ShopMock {
  ShopMock._();

  static const List<ShopItem> shopItems = [
    ShopItem(
      title: "Apple",
      quantity: 128,
      perItemPrice: 2.5,
    ),
    ShopItem(
      title: "Banana",
      quantity: 32,
      perItemPrice: 3.5,
    ),
    ShopItem(
      title: "Orange",
      quantity: 64,
      perItemPrice: 3.0,
    ),
    ShopItem(
      title: "Watermelon",
      quantity: 1,
      perItemPrice: 10.2,
    ),
    ShopItem(
      title: "Lemon",
      quantity: 8,
      perItemPrice: 4.8,
    ),
    ShopItem(
      title: "Pear",
      quantity: 256,
      perItemPrice: 2.8,
    ),
  ];

}