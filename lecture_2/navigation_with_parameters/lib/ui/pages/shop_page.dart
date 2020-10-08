import 'package:flutter/material.dart';
import 'package:navigation_with_parameters/mocks/shop_mock.dart';
import 'package:navigation_with_parameters/models/shop_item.dart';
import 'package:navigation_with_parameters/resourses/strings.dart';
import 'package:navigation_with_parameters/ui/pages/shop_item_page.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.shopPageTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: ShopMock.shopItems.map(_buildShopItemView).toList(),
        ),
      ),
    );
  }

  Widget _buildShopItemView(ShopItem item) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ShopItemPage(item: item)));
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.info),
            SizedBox(width: 16.0),
            Expanded(child: _buildItemTitle(item.title)),
          ],
        ),
      ),
    );
  }

  Widget _buildItemTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.black87,
      ),
    );
  }
}
