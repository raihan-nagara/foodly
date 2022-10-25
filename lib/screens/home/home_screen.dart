import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodly/screens/home/detail_page.dart';
import 'package:foodly/model/food.dart';
import 'package:foodly/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexCategory = 0;
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.circleUser,
                color: Colors.black, size: 25),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 0),
          header(),
          const SizedBox(height: 0),
          categories(),
          const SizedBox(height: 5),
          gridFood(),
          const SizedBox(height: 10),
          cart(),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "I want to",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Eat",
                  style: TextStyle(
                      height: 0.0,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 32),
                ),
              ],
            ),
          ],
        ));
  }

  Widget categories() {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 5,
                      vertical: defaultPadding / 2,
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/icons/donut.svg", width: 30),
                        const SizedBox(height: defaultPadding / 2),
                        Text("Donut",
                            style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 5,
                      vertical: defaultPadding / 2,
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/icons/burger.svg",
                            width: 30, color: Colors.grey),
                        const SizedBox(height: defaultPadding / 2),
                        Text(
                          "Burger",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 5,
                      vertical: defaultPadding / 2,
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/icons/smoothie.svg",
                            width: 30, color: Colors.grey),
                        const SizedBox(height: defaultPadding / 2),
                        Text("Smoothie",
                            style: Theme.of(context).textTheme.subtitle1),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 5,
                      vertical: defaultPadding / 2,
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/icons/pancakes.svg",
                            width: 30, color: Colors.grey),
                        const SizedBox(height: defaultPadding / 2),
                        Text("Pancake",
                            style: Theme.of(context).textTheme.subtitle1),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 5,
                      vertical: defaultPadding / 2,
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/icons/pizza.svg",
                            width: 30, color: Colors.grey),
                        const SizedBox(height: defaultPadding / 2),
                        Text("Pizza",
                            style: Theme.of(context).textTheme.subtitle1),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget gridFood() {
    return GridView.builder(
      itemCount: dummyFoods.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 235,
      ),
      itemBuilder: (context, index) {
        Food food = dummyFoods[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(food: food);
            }));
          },
          child: Container(
            height: 261,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: Image.asset(
                          food.image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        food.name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Text(
                            food.merk,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                const Positioned(
                  left: 12,
                  bottom: 18,
                  child: Icon(Icons.favorite_border, color: Colors.grey),
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('\$' "15",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget cart() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(),
      ),
      child: Row(
        children: [
          Column(
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 2),
                opacity: opacity,
                child: const Text.rich(
                  TextSpan(
                    text: "2 Items | " '\$' "45\n",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "Delivery Charges Included",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => setState(() {
            opacity = 1;
                }),
                child: const Text(
                  "View Cart",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
