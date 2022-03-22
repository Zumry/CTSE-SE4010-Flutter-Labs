import 'package:flutter/material.dart';
import 'package:lab_03_application/components/item_tile.dart';
import 'package:lab_03_application/data.dart';
import 'package:lab_03_application/screens/shop.dart';

class Home extends StatefulWidget {
  static const String routeName = '/';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shop"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Shop.routeName);
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: storeItems.length,
            itemBuilder: (context, index) {
              return ItemTile(
                item: storeItems.elementAt(index),
              );
            }),
      ),
    );
  }
}
