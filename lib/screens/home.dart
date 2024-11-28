import 'package:flutter/material.dart';

import '../models/item_model.dart';
import '../widgets/item_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = [
    Item(id: 1, name: "Cotton Marcella Bib Front Formal Shirt", price: 380.0, image: "https://thomsweeney.com/cdn/shop/files/CON-SH06A-W_f3749ef4-2a2d-4cf1-a993-cfe7fa812074.jpg?v=1729859596&width=1066" ,description: "Luxuriate in the sophisticated elegance of this Marcella bib front formal shirt, crafted from the finest cotton poplin for a timelessly classic look."),
    Item(id: 2, name: "Silk Lecce Collar Fly Front Shirt", price: 480.0, image: "https://thomsweeney.com/cdn/shop/files/FLYF01-N.jpg?v=1712073116&width=1066" ,description: "When a cotton shirt just won’t do, try this luxurious black silk version. Louche, elegant and endlessly soft against the skin, it’s the perfect finishing touch for the sharpest of suits."),
    Item(id: 3, name: "Wool Silk Duke of York Formal Shirt", price: 380.0, image: "https://thomsweeney.com/cdn/shop/files/CON-SH05-N.jpg?v=1712071640&width=1066" ,description: "With its pleated bib front, button studs and double cocktail cuffs, our midnight navy Duke of York shirt is the definition of elegant."),
    Item(id: 4, name: "Flannel Point Collar Shirt", price: 435.0, image: "https://thomsweeney.com/cdn/shop/files/AW24-SH01_ab7923e8-6d39-4377-aecf-3d3d74a5dfd0.jpg?v=1725449748&width=1066" ,description: "Cut from an incredibly soft, oat colour flannel fabric, this point collar shirt combines a slight ‘70s look with unbelievable softness against the skin."),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
        title: const Text("211051", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ItemGrid(items: items),
    );
  }
}