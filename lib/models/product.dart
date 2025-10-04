class Product {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavourite;
  final String description;

  const Product({
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.oldPrice,
    this.isFavourite = false,
  });
}

final List<Product> products = [
  const Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 68.99,
    oldPrice: 150.68,
    imageUrl: 'assets/images/shoe.jpg',
    description: 'This is a description of the product 1',
  ),
  const Product(
    name: 'Laptop',
    category: 'Electronics',
    price: 68.99,
    oldPrice: 150.68,
    imageUrl: 'assets/images/laptop.jpg',
    description: 'This is a description of the product 1',
  ),
  const Product(
    name: 'Jordan Shoes',
    category: 'Footwear',
    price: 68.99,
    oldPrice: 150.68,
    imageUrl: 'assets/images/shoe2.jpg',
    description: 'This is a description of the product 1',
  ),
  const Product(
    name: 'puma',
    category: 'Footwear',
    price: 68.99,
    oldPrice: 150.68,
    imageUrl: 'assets/images/shoes2.jpg',
    description: 'This is a description of the product 1',
  ),
];
