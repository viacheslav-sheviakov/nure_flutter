import 'package:flutter/material.dart';
import 'package:navigation_with_parameters/models/shop_item.dart';
import 'package:navigation_with_parameters/resourses/strings.dart';

class ShopItemPage extends StatefulWidget {
  final ShopItem item;

  const ShopItemPage({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  _ShopItemPageState createState() => _ShopItemPageState();
}

class _ShopItemPageState extends State<ShopItemPage> {
  String _getCorrectItemWordForm(int quantity) =>
      quantity == 1 ? Strings.itemSingular : Strings.itemPlural;

  void _showMessageDialog() {
    showDialog(
      context: context,
      child: AlertDialog(
        content: Text(Strings.purchaseAttemptMessage),
        actions: [
          FlatButton(
            child: Text(Strings.okButtonText),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(widget.item.title),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: _buildItem()),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: _buildPurchaseButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildPrice(),
        SizedBox(height: 24.0),
        _buildQuantity(),
      ],
    );
  }

  Widget _buildPrice() {
    return Text(
      "\$${widget.item.perItemPrice}",
      style: TextStyle(
        fontSize: 48.0,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    );
  }

  Widget _buildQuantity() {
    return Text(
      "${widget.item.quantity} ${_getCorrectItemWordForm(widget.item.quantity)}",
      style: TextStyle(
        color: Colors.black26,
        fontSize: 24.0,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget _buildPurchaseButton() {
    return MaterialButton(
      minWidth: double.infinity,
      padding: EdgeInsets.all(16.0),
      color: Theme.of(context).primaryColorDark,
      child: Text(
        Strings.purchaseButtonText.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.8,
        ),
      ),
      onPressed: _showMessageDialog,
    );
  }
}
