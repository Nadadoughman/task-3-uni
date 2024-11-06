import 'package:flutter/material.dart';
import 'package:taskfour/productClass.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  final List<Product> products = [
    const Product(
        name: "Eyeshadow Palette",
        description:
            "This professional level makeup palette features 16 highly pigmented shadows",
        imageUrl: "assets/nyx.jpg"),
    Product(
        name: "NYX lipstick",
        description:
            "Contour and accentuate your lip shape with this vegan lipstick that sets to a smooth matte finish",
        imageUrl: "assets/lip.jpg"),
    Product(
        name: "Lash Lifting Mascra",
        description: "Custom SuperSpark Brush grabs lashes—shooting them up",
        imageUrl: "assets/mascra.jpg"),
    Product(
        name: "Foundation full coverage",
        description:
            "For a natural looking medium coverage liquid foundation makeup, look no further; In 40 shades",
        imageUrl: "assets/westjpg.jpg"),
    Product(
        name: "Naked Platte eyeshadow",
        description: "BestLand 12 Colors Makeup Nude Colors Eyeshadow Palette",
        imageUrl: "assets/naked.jpg"),
    Product(
        name: "Julep Eyeshadow 101 Crème",
        description:
            "CREME-TO-POWDER WATERPROOF EYESHADOW: This waterproof, crème-to-powder eyeshadow stick",
        imageUrl: "assets/lipstick.jpg"),
    Product(
        name: "Eyeshadow Palette",
        description:
            "This professional level makeup palette features 16 highly pigmented shadows",
        imageUrl: "assets/nyx.jpg"),
    Product(
        name: "NYX lipstick",
        description:
            "Contour and accentuate your lip shape with this vegan lipstick that sets to a smooth matte finish",
        imageUrl: "assets/lip.jpg"),
    Product(
        name: "Lash Lifting Mascra",
        description: "Custom SuperSpark Brush grabs lashes—shooting them up",
        imageUrl: "assets/mascra.jpg"),
    Product(
        name: "Foundation full coverage",
        description:
            "For a natural looking medium coverage liquid foundation makeup, look no further; In 40 shades",
        imageUrl: "assets/westjpg.jpg"),
    Product(
        name: "Naked Platte eyeshadow",
        description: "BestLand 12 Colors Makeup Nude Colors Eyeshadow Palette",
        imageUrl: "assets/naked.jpg"),
    Product(
        name: "Julep Eyeshadow 101 Crème",
        description:
            "CREME-TO-POWDER WATERPROOF EYESHADOW: This waterproof, crème-to-powder eyeshadow stick",
        imageUrl: "assets/lipstick.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_sharp))
        ],
        backgroundColor: Color.fromARGB(255, 214, 186, 134),
        title: const Text('Makeup Products'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Banner Image
          Image.asset('assets/back.jpg'), // Replace with your banner image path

          // Product List
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Price : 33\$",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                );
              },
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    child: Image.asset(
                      products[index].imageUrl,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  title: Text(
                    products[index].name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(products[index].description),
                  trailing: IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {
                      // Handle favorite action
                    },
                  ),
                  onTap: () {
                    // Navigate to product details
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
