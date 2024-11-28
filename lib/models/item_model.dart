class Item {
  int id;
  String name;
  String image;
  String description;
  double price;

  Item({required this.id, required this.name, required this.image, required this.description, required this.price});

  Item.fromJson(Map<String, dynamic> data)
      : id = data['id'],        name = data['name'],
        image = data['image'],
        description = data['description'],
        price = data['price'];
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'image': image, 'description': description, 'price': price};
}