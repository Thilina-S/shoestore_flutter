import 'package:shoestore/view/notifications/models/notification_type.dart';

class NotificationRepository {
  List<NotificationItem> getNotifications() {
    return const[
      NotificationItem(
        title: 'Order Confirmed',
        Message:
            'Your order #253745 has been confirmed and is begin processed.',
        time: '2 minutes ago',
        type: NotificationType.order,
        isRead: true,
      ),

      NotificationItem(
        title: 'Special Offer',
        Message:
            'Get 20% off on all shoes this weekend !',
        time: '1 hour ago',
        type: NotificationType.promo,
        isRead: true,
      ),

      NotificationItem(
        title: 'out for the delivery',
        Message:
            'Your order #253745 is out for delivery',
        time: '3 hour ago',
        type: NotificationType.delivery,
        isRead: true,
      ),

      NotificationItem(
        title: 'payment is successfull !',
        Message:
            'Payment for the #256329 was successful !',
        time: '1 minutes ago',
        type: NotificationType.payment,
        isRead: true,
      ),
    ];
  }
}
