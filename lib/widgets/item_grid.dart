import 'package:flutter/material.dart';
import 'package:clothing_app/models/item_model.dart';
import 'package:clothing_app/widgets/item_card.dart';

class ItemGrid extends StatefulWidget {
  final List<Item> items;
  const ItemGrid({super.key, required this.items});
  @override
  _ItemGridState createState() => _ItemGridState();
}
class _ItemGridState extends State<ItemGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 274,
      physics: const BouncingScrollPhysics(),
      children: widget.items.map((item) =>
          ItemCard(id: item.id, name: item.name, image: item.image, description:  item.description, price:  item.price),
      ).toList(),
    );
  }
}