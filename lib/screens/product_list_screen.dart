import 'package:flutter/material.dart';
import 'package:flutterprjgroup2/models/product.dart';
import 'package:flutterprjgroup2/screens/product_detail_screen.dart';
import 'package:flutterprjgroup2/widgets/product_card.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int gridCount = screenWidth > 1200
        ? 6
        : screenWidth > 900
            ? 5
            : screenWidth > 600
                ? 4
                : 3;
    double aspectRatio = screenWidth > 600 ? 0.7 : 0.5;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Games'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          childAspectRatio: aspectRatio,
        ),
        itemCount: Product.products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailScreen(product: Product.products[index]),
                ),
              );
            },
            child: ProductCard(product: Product.products[index]),
          );
        },
      ),
    );
  }
}
