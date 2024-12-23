import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({
    super.key,
    required this.notificationNumber,
  });

  final int notificationNumber;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 22,
      left: 35,
      child: Container(
        decoration: BoxDecoration(
            color: notificationNumber > 0 ? Colors.red : Colors.transparent,
            shape: BoxShape.circle),
        constraints: const BoxConstraints(
          minHeight: 16,
          minWidth: 16,
        ),
        child: Center(
          child: notificationNumber > 0 ? Text(
                  notificationNumber.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                )
              : null,
        ),
      ),
    );
  }
}
