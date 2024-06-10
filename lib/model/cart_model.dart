class CartItemtModel {
  final int id;
  final String name;
  final double price;
  int quantity;

  CartItemtModel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });
}

List<CartItemtModel> cartItems = [];
