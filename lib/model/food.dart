class Food {
  Food({
    required this.id,
    required this.image,
    required this.name,
    required this.merk,
    required this.description,
  });

  String id;
  String image;
  String name;
  String merk;
  String description;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        merk: json["merk"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "merk": merk,
        "description": description,
      };
}

final dummyFoods = [
  Food(
    id: '1',
    image: 'assets/images/donut1.png',
    name: 'Nuts Caramel',
    merk: 'Dunkin',
    description:
        'The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
  ),
  Food(
    id: '2',
    image: 'assets/images/donut2.png',
    name: 'Red Velvet',
    merk: 'Dunkin',
    description:
        'The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
  ),
  Food(
    id: '3',
    image: 'assets/images/donut3.png',
    name: 'Strawberry',
    merk: 'Dunkin',
    description:
        'The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
  ),
  Food(
    id: '4',
    image: 'assets/images/donut4.png',
    name: 'Choco Tap',
    merk: 'Dunkin',
    description:
        'The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
  ),
];
