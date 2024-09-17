import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/product_repository.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository _productRepository;

  ProductCubit(this._productRepository) : super(ProductInitial());

  Future<void> loadProducts() async {
    try {
      emit(ProductLoading());
      final products = await _productRepository.fetchProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError('Failed to load products'));
    }
  }
}
