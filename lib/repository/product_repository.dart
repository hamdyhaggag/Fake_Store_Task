import 'package:dio/dio.dart';
import '../models/product.dart';

class ProductRepository {
  final Dio _dio = Dio();

  Future<List<Product>> fetchProducts() async {
    final response = await _dio.get('https://fakestoreapi.com/products');
    if (response.statusCode == 200) {
      List productsJson = response.data;
      return productsJson.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
