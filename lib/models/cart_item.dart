import 'product.dart';

class CartItem {
  final Product product;
  int quantity;
  String? selectedVariation;

  CartItem({
    required this.product,
    this.quantity = 1,
    this.selectedVariation,
  });

  double get total => product.price * quantity;
}
