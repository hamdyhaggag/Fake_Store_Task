class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;
  final double rating;
  final String? subtitle;
  final double? oldPrice;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
    this.subtitle,
    this.oldPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] ?? 0.0).toDouble(),
      image: json['image'] ?? '',
      rating: (json['rating']['rate'] ?? 0.0).toDouble(),
      subtitle: json['subtitle'], // Handle optional field
      oldPrice: json['oldPrice'] != null
          ? (json['oldPrice'] as num).toDouble()
          : null,
    );
  }
}
