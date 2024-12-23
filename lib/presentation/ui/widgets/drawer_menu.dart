import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'drawer_menu_item.dart';
import 'notification_badge.dart';


class DrawerMenu extends StatelessWidget {
  DrawerMenu({super.key});

  final MenuController controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrawerMenuItem(
          index: 0,
          title: "Home",
          icon: Icons.home_outlined,
        ),
        const SizedBox(
          height: 12,
        ),
        DrawerMenuItem(
          index: 1,
          title: "Profile",
          icon: Icons.person_outline,
        ),
        const SizedBox(
          height: 12,
        ),
        DrawerMenuItem(
          index: 2,
          title: "Nearby",
          icon: Icons.location_on_outlined,
        ),
        const SizedBox(
          height: 12,
        ),
        const SizedBox(
            width: 170,
            child: Divider(
              color: Colors.white,
            )),
        const SizedBox(
          height: 12,
        ),
        DrawerMenuItem(
          index: 3,
          title: "Bookmark",
          icon: Icons.bookmark_outline,
        ),
        const SizedBox(
          height: 12,
        ),
        Stack(
          children: [
            DrawerMenuItem(
              index: 4,
              title: "Notification",
              icon: Icons.notifications_none_outlined,
            ),
            const NotificationBadge(notificationNumber: 7),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Stack(
         children: [
           DrawerMenuItem(
             index: 5,
             title: "Message",
             icon: Icons.chat_bubble_outline_rounded,
           ),
           const NotificationBadge(notificationNumber: 2),
         ],
        ),
        const SizedBox(
          height: 12,
        ),
        const SizedBox(
            width: 170,
            child: Divider(
              color: Colors.white,
            )),
        const SizedBox(
          height: 12,
        ),
        DrawerMenuItem(
          index: 6,
          title: "Settings",
          icon: Icons.settings_outlined,
        ),
        const SizedBox(
          height: 12,
        ),
        DrawerMenuItem(
          index: 7,
          title: "Help",
          icon: Icons.help_outline,
        ),
        const SizedBox(
          height: 12,
        ),
        DrawerMenuItem(
          index: 8,
          title: "Logout",
          icon: Icons.power_settings_new,
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
