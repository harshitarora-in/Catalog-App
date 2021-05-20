class Item {
  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.color,
      this.image});
}

final products = [
  Item(
      id: "harsh1",
      name: "iPhone 12 Pro",
      description: "demo description",
      price: 999,
      color: "#ffffff",
      image: "")
];
