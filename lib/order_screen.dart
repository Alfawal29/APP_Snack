import 'dart:ui';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrundbild
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_mainscreen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Hauptinhalt
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 75.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Choose Your Favorite\nSnack",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // Kategorien-Buttons
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategoryButton("All Categories", false),
                      buildCategoryButton("Salty", true),
                      buildCategoryButton("Sweet", false),
                      buildCategoryButton("Drinks", false),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                buildBurgerCard(),
                const SizedBox(height: 30),
                const Text(
                  "We Recommend",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // Empfehlungen
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildRecommendationCard(
                        context: context,
                        title: "Mogli's Cup",
                        description: "Strawberry ice cream",
                        Bescription: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam" ,
                        price: "₳ 8.99",
                        imagePath: 'assets/images/cupkake_cat.png',
                        likes: 200,
                      ),
                      buildRecommendationCard(
                        context: context,
                        title: "Balu's Cup",
                        description: "Pistachio ice cream",
                        Bescription: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam" ,
                        price: "₳ 8.99",
                        imagePath: 'assets/images/icecream.png',
                        likes: 175,
                      ),
                      buildRecommendationCard(
                        context: context,
                        title: "Cone Bliss",
                        description: "Chocolate cone",
                        Bescription: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam" ,
                        price: "₳ 7.49",
                        imagePath: 'assets/images/icecream_cone.png',
                        likes: 150,
                      ),
                      buildRecommendationCard(
                        context: context,
                        title: "Choco Popsicle",
                        description: "Vanilla & Choco",
                        Bescription: "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam" ,
                        price: "₳ 6.99",
                        imagePath: 'assets/images/icecream_stick.png',
                        likes: 120,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryButton(String text, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: isActive ? Colors.white.withOpacity(0.5) : Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: isActive
            ? null
            : Border.all(color: Colors.white.withOpacity(0.4)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? Colors.black : Colors.white,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  Widget buildBurgerCard() {
  return Stack(
    clipBehavior: Clip.none, // Ermöglicht Überschreiten des Container-Bereichs
    children: [
      // Hintergrund mit Blur
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            width: double.infinity,
            height: 240, // Platz für den Button unten
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 56, 59, 59).withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 101, 100, 100).withOpacity(0.3),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 20,left: 20,bottom: 15,top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  // Sterne-Bewertung in der oberen rechten Ecke
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: Colors.pinkAccent, size: 18),
                        const SizedBox(width: 5),
                        const Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                   // Schiebt den Text nach unten
                  const Text(
                    "Angi's Yummy Burger",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Delish vegan burger\nthat tastes like heaven",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "₳ 13.99",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Button hinzufügen
                  Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: const RadialGradient(
                        colors: [Color(0xFF908CF5), Color(0xFFBB8DE1)],
                        radius: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Aktion beim Klick
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Add to order",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // Burger-Bild über dem Container
      Positioned(
        right: -130, // Leicht außerhalb des Containers
        top: -30, // Über dem Blur-Bereich platzieren
        child: Transform.scale(
          scale: 0.5, // Größe des Bildes anpassen
          child: Image.asset(
            'assets/images/burger.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    ],
  );
}

Widget buildRecommendationCard({
  required BuildContext context,
  required String title,
  required String description,
  required String Bescription,
  required String price,
  required String imagePath,
  required int likes,
}) {
  return GestureDetector(
    onTap: () {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9, // 90% der Bildschirmhöhe
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 40, 38, 38),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  // Ziehleiste
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  // Bild oben
                  Transform.translate(
                    offset: const Offset(0, -100),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imagePath,
                        height: 400,
                        width: 400,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // Blur-Container
                  Transform.translate(
                    offset: const Offset(0, -200),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 56, 59, 59).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color.fromARGB(255, 101, 100, 100).withOpacity(0.3),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    const Spacer(),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.redAccent,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          likes.toString(),
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  title,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  Bescription,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  price,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Divider(),
                                const SizedBox(height: 20),
                                // Ingredients und Reviews
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Ingredients Section
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Ingredients",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            buildIconWithBorder(Icons.grass),
                                            const SizedBox(width: 10),
                                            buildIconWithBorder(Icons.fastfood),
                                            const SizedBox(width: 10),
                                            buildIconWithBorder(Icons.local_fire_department),
                                            const SizedBox(width: 10),
                                            buildIconWithBorder(Icons.eco),
                                          ],
                                        ),
                                      ],
                                    ),
                                    // Reviews Section
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "Reviews",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Row(
                                              children: const [
                                                Icon(Icons.star, color: Colors.white, size: 18),
                                                Icon(Icons.star, color: Colors.white, size: 18),
                                                Icon(Icons.star, color: Colors.white, size: 18),
                                                Icon(Icons.star, color: Colors.white, size: 18),
                                                Icon(Icons.star_border, color: Colors.white, size: 18),
                                              ],
                                            ),
                                            const SizedBox(width: 10),
                                            const Text(
                                              "4.0",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Größen-Auswahl und Zähler
                  Transform.translate(
                    offset: const Offset(10, -190),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Größen-Auswahl (Small, Medium, Large)
                          Flexible(
                            child: ToggleButtons(
                              isSelected: [false, false, true],
                              onPressed: (int index) {
                                // Aktion bei Klick
                              },
                              color: Colors.white70,
                              selectedColor: Colors.white,
                              fillColor: Colors.white12,
                              borderColor: Colors.white24,
                              selectedBorderColor: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              constraints: const BoxConstraints(
                                minWidth: 70,
                                minHeight: 30,
                              ),
                              children: const [
                                Text("Small", style: TextStyle(fontSize: 10)),
                                Text("Medium", style: TextStyle(fontSize: 10)),
                                Text("Large", style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                          // Zähler (Minus, Anzahl, Plus)
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  // Aktion für Minus
                                },
                                icon: const Icon(Icons.remove),
                                color: Colors.white70,
                                iconSize: 20,
                              ),
                              const Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  // Aktion für Plus
                                },
                                icon: const Icon(Icons.add),
                                color: Colors.white70,
                                iconSize: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Add to Order Button
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Aktion beim Klicken des Buttons
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor: Colors.pinkAccent, // Einfarbiger Button
                        ),
                        child: Text(
                          "Add to order for $price",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Abstand nach unten
                ],
              ),
            ),
          );
        },
      );
    },
    child: Container(
      margin: const EdgeInsets.only(right: 20),
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [Color(0xFF9288E4), Color(0xFF534EA7)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
              height: 90,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.favorite_border, size: 16, color: Colors.white70),
                    const SizedBox(width: 5),
                    Text(
                      likes.toString(),
                      style: const TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

}








  







  Widget buildIconWithBorder(IconData icon) {
  return Container(
    width: 30, 
    height: 30, 
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white70, 
        width: 1.5, 
      ),
    ),
    child: Icon(
      icon,
      color: Colors.white70, 
      size: 16,
    ),
  );
}





