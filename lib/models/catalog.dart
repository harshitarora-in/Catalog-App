class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        description: "demo description",
        price: 999,
        color: "#ffffff",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb57uVyMiCHrr9T4NMJma_5PDU_tL_0cS1rQ&usqp=CAU")
  ];
}

class Item {
  final int id;
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
