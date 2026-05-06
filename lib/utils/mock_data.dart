import '../models/product.dart';
import '../models/category.dart';

class MockData {
  static List<Category> categories = [
    Category(id: 'deals', name: 'Deals', icon: 'auto_awesome'),
    Category(id: 'burgers', name: 'Burgers', icon: 'lunch_dining'),
    Category(id: 'wraps', name: 'Wraps', icon: 'fastfood'),
    Category(id: 'swirls', name: 'Swirls', icon: 'icecream'),
    Category(id: 'sundaes', name: 'Sundaes', icon: 'cake'),
    Category(id: 'twisters', name: 'Twisters', icon: 'shutter_speed'),
    Category(id: 'fries', name: 'Fries', icon: 'restaurant'),
    Category(id: 'shakes', name: 'Shakes', icon: 'local_drink'),
    Category(id: 'chillers', name: 'Chillers', icon: 'ac_unit'),
    Category(id: 'mocktails', name: 'Mocktails', icon: 'local_bar'),
  ];

  static List<Product> products = [
    // Swirls
    Product(
      id: 'sw1',
      name: 'Chocolate Swirl',
      description: 'Our classic chocolate soft serve swirl.',
      price: 220.0,
      imageUrl: 'https://images.unsplash.com/photo-1570197788417-0e82375c9371?q=80&w=400',
      categoryId: 'swirls',
    ),
    Product(
      id: 'sw2',
      name: 'Chocolate Nutty Swirl',
      description: 'Chocolate swirl topped with premium nuts.',
      price: 290.0,
      imageUrl: 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?q=80&w=400',
      categoryId: 'swirls',
    ),
    // Sundaes
    Product(
      id: 'sd1',
      name: 'Vanilla Peanut Butter Sundae',
      description: 'Vanilla soft serve with peanut butter and chocolate syrup.',
      price: 420.0,
      imageUrl: 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?q=80&w=400',
      categoryId: 'sundaes',
    ),
    // Burgers
    Product(
      id: 'bg1',
      name: 'The Original Burger',
      description: 'Signature chicken burger with lettuce and mayo.',
      price: 499.0,
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=400',
      categoryId: 'burgers',
    ),
    Product(
      id: 'bg2',
      name: 'Maestro Burger',
      description: 'Premium beef patty with special sauce.',
      price: 520.0,
      imageUrl: 'https://images.unsplash.com/photo-1550547660-d9450f859349?q=80&w=400',
      categoryId: 'burgers',
    ),
    Product(
      id: 'bg3',
      name: 'Maestro Xtreme',
      description: 'Double patty beef burger with extra cheese.',
      price: 690.0,
      imageUrl: 'https://images.unsplash.com/photo-1550547660-d9450f859349?q=80&w=400',
      categoryId: 'burgers',
    ),
    // Wraps
    Product(
      id: 'wr1',
      name: 'Sriracha Wrap',
      description: 'Spicy chicken wrap with sriracha sauce.',
      price: 470.0,
      imageUrl: 'https://images.unsplash.com/photo-1626700051175-6818013e1d4f?q=80&w=400',
      categoryId: 'wraps',
    ),
    // Fries
    Product(
      id: 'fr1',
      name: 'Signature Fries',
      description: 'Our special loaded fries with multiple sauces.',
      price: 540.0,
      imageUrl: 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?q=80&w=400',
      categoryId: 'fries',
    ),
    Product(
      id: 'fr2',
      name: 'Mayo Extreme Fries',
      description: 'Fries loaded with extra mayo and seasonings.',
      price: 540.0,
      imageUrl: 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?q=80&w=400',
      categoryId: 'fries',
    ),
    Product(
      id: 'fr3',
      name: 'Classic Fries',
      description: 'Golden crispy potato fries.',
      price: 320.0,
      imageUrl: 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?q=80&w=400',
      categoryId: 'fries',
    ),
    // Shakes
    Product(
      id: 'sh1',
      name: 'Vanilla Peanut Butter Shake',
      description: 'Creamy shake with vanilla and peanut butter.',
      price: 530.0,
      imageUrl: 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?q=80&w=400',
      categoryId: 'shakes',
    ),
  ];

  static List<Product> deals = [
    Product(
      id: 'd1',
      name: 'Deal 1',
      description: 'The Original Burger + Classic Fries + Drink.',
      price: 599.0,
      imageUrl: 'https://images.unsplash.com/photo-1610614819513-58e34989848b?q=80&w=400',
      categoryId: 'deals',
    ),
    Product(
      id: 'd2',
      name: 'Deal 2',
      description: '2 Burgers + Large Fries + 2 Drinks.',
      price: 990.0,
      imageUrl: 'https://images.unsplash.com/photo-1610614819513-58e34989848b?q=80&w=400',
      categoryId: 'deals',
    ),
    Product(
      id: 'd3',
      name: 'Deal 3',
      description: '3 Burgers + 2 Large Fries + 1.5L Drink.',
      price: 1450.0,
      imageUrl: 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?q=80&w=400',
      categoryId: 'deals',
    ),
  ];
}
