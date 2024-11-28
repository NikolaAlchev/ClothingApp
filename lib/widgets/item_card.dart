import 'package:flutter/material.dart';
import 'package:clothing_app/models/item_model.dart';
import 'package:clothing_app/widgets/item_card_data.dart';

class ItemCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;

  const ItemCard({super.key, required this.id, required this.name, required this.image, required this.description, required this.price });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Item(id: id, name: name, image: image, description: description, price: price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ItemCardData(image: image, name: name),
        ),
      ),
    );
  }
}