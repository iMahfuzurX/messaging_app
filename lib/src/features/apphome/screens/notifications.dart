import 'package:flutter/material.dart';
import 'package:messaging_app/src/constants/colors.dart';
import 'package:messaging_app/src/features/apphome/models/notifications_model.dart';

class MNotificationWidget extends StatelessWidget {
  final List<NotificationsModel> notificationList;

  const MNotificationWidget({Key? key, required this.notificationList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(notificationList[index].notificationId),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: appPrimaryDarkColor.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: () => null,
            leading: Icon(Icons.notifications),
            title: Text(notificationList[index].message),
            trailing:
                IconButton(onPressed: () => null, icon: Icon(Icons.clear)),
          ),
        ),
      ),
      itemCount: notificationList.length,
    );
  }
}
