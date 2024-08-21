import 'package:flutter/material.dart';
import 'package:flutterprjgroup2/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.width > 600 ? 150 : 100;

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: 'hero-product-image-${product.name}',
              child: Image(
                image: AssetImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width > 600 ? 14 : 10, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width > 600 ? 12 : 8), // Responsive font size
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


