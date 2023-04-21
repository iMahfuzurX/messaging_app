class NotificationsModel {
  final String notificationId;
  final String timeStamp;
  final bool isRead;
  final String userId;
  final String message;

  NotificationsModel(this.notificationId, this.timeStamp, this.isRead,
      this.userId, this.message);
}
