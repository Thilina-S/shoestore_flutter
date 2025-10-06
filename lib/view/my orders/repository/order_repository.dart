import 'package:shoestore/view/my%20orders/model/order.dart';

class OrderRepository {
  List<Order> getOrders() {
    return [
      Order(
        OrderNumber: '386524',
        itemCount: 2,
        totalAmount: 2569.9,
        status: OrderStatus.active,
        imageUrl: 'assets/images/shoe.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 2)),
      ),

      Order(
        OrderNumber: '325698',
        itemCount: 5,
        totalAmount: 2669.9,
        status: OrderStatus.active,
        imageUrl: 'assets/images/laptop.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 1)),
      ),

      Order(
        OrderNumber: '125486',
        itemCount: 8,
        totalAmount: 1256.9,
        status: OrderStatus.completed,
        imageUrl: 'assets/images/shoe2.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 3)),
      ),

      Order(
        OrderNumber: '965214',
        itemCount: 11,
        totalAmount: 9658.9,
        status: OrderStatus.cancelled,
        imageUrl: 'assets/images/shoes2.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 9)),
      ),
    ];
  }

  List<Order> getOrdersByStatus(OrderStatus status) {
    return getOrders().where((order) => order.status == status).toList();
  }
}
