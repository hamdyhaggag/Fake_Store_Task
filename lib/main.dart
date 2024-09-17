import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/product_cubit.dart';
import 'repository/product_repository.dart';
import 'views/product_list_screen.dart';

void main() {
  runApp(const FakeStore());
}

class FakeStore extends StatelessWidget {
  const FakeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product List',
      home: BlocProvider(
        create: (context) => ProductCubit(ProductRepository())..loadProducts(),
        child: const ProductListScreen(),
      ),
    );
  }
}
