class Food {
  Food({
    required this.id,
    required this.image,
    required this.name,
    required this.price,    
    required this.merk,
    required this.description,
  });

  String id;
  String image;
  String name;
  String price;  
  String merk;
  String description;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        price: json["price"],        
        merk: json["merk"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "price": price,        
        "merk": merk,
        "description": description,
      };
}

final dummyFoods = [
  Food(
    id: '1',
    image: 'assets/images/donut1.png',
    name: 'Nuts Caramel',
    price: '15',    
    merk: 'Dunkin',
    description:
        'The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
  ),
  Food(
    id: '2',
    image: 'assets/images/donut2.png',
    name: 'Red Velvet',
    price: '15',    
    merk: 'Dunkin',
    description:
        'The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
  ),
  Food(
    id: '3',
    image: 'assets/images/donut3.png',
    name: 'Strawberry',
    price: '15',    
    merk: 'Dunkin',
    description:
        'The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
  ),
  Food(
    id: '4',
    image: 'assets/images/donut4.png',
    name: 'Choco Tap',
    price: '15',    
    merk: 'Dunkin',
    description:
        'The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
  ),
];
