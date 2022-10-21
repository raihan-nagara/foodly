import 'package:flutter/material.dart';

import '/model/food.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.food}) : super(key: key);
  final Food food;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 141, 225),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          header(),
          const SizedBox(height: 0),
          image(),
          details(),
        ],
      ),
    );
  }

  Container details() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ingredients",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          Row(
            children: [
              Align(
                child: Container(
                  height: 120,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10, left: 0, right: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius:
                        new BorderRadius.all(Radius.elliptical(60, 50)),
                  ),
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      text: "Sugar",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "8 Gram\n\n",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "    2%",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Align(
                child: Container(
                  height: 120,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10, left: 15, right: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius:
                        new BorderRadius.all(Radius.elliptical(60, 50)),
                  ),
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      text: "Salt\n",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "8 Gram\n\n",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "    3%",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Align(
                child: Container(
                  height: 120,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10, left: 15, right: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius:
                        new BorderRadius.all(Radius.elliptical(60, 50)),
                  ),
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      text: "Fat\n",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "8 Gram\n\n",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "   12%",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Align(
                child: Container(
                  height: 120,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10, left: 15, right: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius:
                        new BorderRadius.all(Radius.elliptical(60, 50)),
                  ),
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      text: "Energy\n",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
                      children: [
                        TextSpan(
                          text: "140 Kcal\n\n",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "   40%",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Details',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            widget.food.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 0),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(),
            ),
            child: const Text.rich(
              TextSpan(
                text: '\$' "12.75\n",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "Delivery Not Included",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  SizedBox image() {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 55,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(250),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image.asset(
                  widget.food.image,
                  fit: BoxFit.cover,
                  width: 180,
                  height: 180,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Material(
            color: Colors.white.withOpacity(0.0),
            child: const BackButton(color: Colors.white),
          ),
          const SizedBox(width: 55),
          Text(
            widget.food.name,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
