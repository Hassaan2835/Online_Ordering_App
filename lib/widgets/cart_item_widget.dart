import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_item.dart';
import '../providers/cart_provider.dart';
import '../utils/app_theme.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;
  const CartItemWidget({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.surfaceColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(cartItem.product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                if (cartItem.selectedVariation != null)
                  Text(
                    cartItem.selectedVariation!,
                    style: const TextStyle(color: AppTheme.secondaryTextColor, fontSize: 12),
                  ),
                const SizedBox(height: 8),
                Text(
                  '\$${cartItem.product.price.toStringAsFixed(2)}',
                  style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.remove_circle_outline, color: AppTheme.secondaryTextColor, size: 20),
                onPressed: () => cart.updateQuantity(
                  cartItem.product.id, 
                  cartItem.quantity - 1,
                  variation: cartItem.selectedVariation,
                ),
              ),
              Text(
                '${cartItem.quantity}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: const Icon(Icons.add_circle_outline, color: AppTheme.primaryColor, size: 20),
                onPressed: () => cart.updateQuantity(
                  cartItem.product.id, 
                  cartItem.quantity + 1,
                  variation: cartItem.selectedVariation,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
