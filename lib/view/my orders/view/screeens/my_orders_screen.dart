import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoestore/utils/app_textstyles.dart';
import 'package:shoestore/view/my%20orders/model/order.dart';
import 'package:shoestore/view/my%20orders/repository/order_repository.dart';
import 'package:shoestore/view/my%20orders/view/widgets/order_card.dart';

class MyOrdersScreen extends StatelessWidget {
  final OrderRepository _repository = OrderRepository();
  MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: isDark ? Colors.grey[400] : Colors.grey[600],
            indicatorColor: Theme.of(context).primaryColor,
            tabs: const [
              Tab(text: 'Active'),
              Tab(text: 'completed'),
              Tab(text: 'Cancelled'),
            ],
          ),
          title: Text(
            'My Orders',
            style: AppTextStyle.withColor(
              AppTextStyle.h3,
              isDark ? Colors.white : Colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildOrderList(context, OrderStatus.active),
            _buildOrderList(context, OrderStatus.completed),
            _buildOrderList(context, OrderStatus.cancelled),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderList(BuildContext context, OrderStatus status) {
    final orders = _repository.getOrdersByStatus(status);

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: orders.length,
      itemBuilder: (context, index) => OrderCard(
        order: orders[index],
        onViewDetails: (){},
      ),
    );
  }
}
