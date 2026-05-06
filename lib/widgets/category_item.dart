import 'package:flutter/material.dart';
import '../models/category.dart';
import '../utils/app_theme.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isSelected ? AppTheme.primaryColor : Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
                border: isSelected ? Border.all(color: AppTheme.primaryColor, width: 2) : null,
              ),
              child: Icon(
                _getIconData(category.icon),
                color: isSelected ? Colors.white : AppTheme.primaryColor,
                size: 28,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              category.name,
              style: TextStyle(
                color: isSelected ? AppTheme.primaryColor : AppTheme.secondaryTextColor,
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIconData(String name) {
    switch (name) {
      case 'icecream': return Icons.icecream_rounded;
      case 'auto_awesome': return Icons.auto_awesome_rounded;
      case 'shutter_speed': return Icons.shutter_speed_rounded;
      case 'restaurant': return Icons.restaurant_rounded;
      case 'ac_unit': return Icons.ac_unit_rounded;
      case 'local_bar': return Icons.local_bar_rounded;
      case 'cake': return Icons.cake_rounded;
      case 'local_drink': return Icons.local_drink_rounded;
      case 'lunch_dining': return Icons.lunch_dining_rounded;
      case 'fastfood': return Icons.fastfood_rounded;
      default: return Icons.category_rounded;
    }
  }
}
