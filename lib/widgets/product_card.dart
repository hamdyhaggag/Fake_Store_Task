import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: const BorderSide(
          color: Color(0XFF004087),
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12.0)),
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  height: 120.0,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Color(0XFF004087),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    Text(
                      'EGP ${product.price.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      '2000 EGP',
                      style: TextStyle(
                        color: Color(0XFF004087),
                        fontSize: 12.0,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Review (${product.rating.toString()})',
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                      ],
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        color: Color(0XFF004087),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Handle add button press
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
