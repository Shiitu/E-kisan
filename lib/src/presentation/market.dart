import 'package:flutter/material.dart';

class ShoppingItem {
  final String name;
  final String image;
  final double price;

  ShoppingItem({required this.name, required this.image, required this.price});
}

class ShoppingListView extends StatelessWidget {
  final List<ShoppingItem> shoppingList = [
    ShoppingItem(
      name: 'Wheat',
      image: 'assets/images/wheat.jpg',
      price: 10.99,
    ),
    ShoppingItem(
      name: 'Rice',
      image: 'assets/images/download.jpg',
      price: 5.99,
    ),
    ShoppingItem(
      name: 'Gram',
      image: 'assets/images/gram.jpg',
      price: 7.99,
    ),
    ShoppingItem(
      name: 'Toor Dal',
      image: 'assets/images/toor.jpg',
      price: 6.99,
    ),
    ShoppingItem(
      name: 'Soyabean',
      image: 'assets/images/soyabean.jpg',
      price: 4.99,
    ),
    ShoppingItem(
      name: 'Sugarcan',
      image: 'assets/images/sugacane.jpg',
      price: 9.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market'),
        backgroundColor: Color.fromRGBO(49, 160, 95, 1),
      ),
      body: ListView.builder(
        itemCount: shoppingList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              child: ListTile(
                leading: Image.asset(
                  shoppingList[index].image,
                  width: 50,
                  height: 50,
                ),
                title: Text(shoppingList[index].name),
                subtitle: Text('\$${shoppingList[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
