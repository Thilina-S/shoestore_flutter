enum NotificationType { order, delivery, promo, payment }

class NotificationItem {
  final String title;
  final String Message;
  final String time;
  final  NotificationType type;
  final bool isRead;

  const NotificationItem({
    required this.title,
    required this.Message,
    required this.time,
    required this.type,
    this.isRead = false,
  });
}
