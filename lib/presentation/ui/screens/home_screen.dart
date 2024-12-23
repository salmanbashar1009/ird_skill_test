import 'package:flutter/material.dart';
import 'package:ird_skill_test/presentation/ui/widgets/best_section_list.dart';
import 'package:ird_skill_test/presentation/ui/widgets/category_list.dart';
import 'package:ird_skill_test/presentation/ui/widgets/home_search_bar.dart';
import 'package:ird_skill_test/presentation/ui/widgets/near_section_carousel.dart';
import 'package:ird_skill_test/presentation/ui/widgets/notification_badge.dart';
import 'package:ird_skill_test/presentation/ui/widgets/section_title.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "location",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: [
                            Text(
                              "Jakarta",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications_outlined)),
                        ),
                        const NotificationBadge(notificationNumber: 7)
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const HomeSearchBar(),
                const SizedBox(
                  height: 20,
                ),
                CategoryList(),
                const SizedBox(
                  height: 20,
                ),
                const TitleSection(title: "Near from you" ),
                const SizedBox(
                  height: 12,
                ),
                const NearSectionCarousel(),
                const SizedBox(
                  height: 20,
                ),
                const TitleSection(title: "Best for you" ),
                const SizedBox(height: 20,),
                BestSectionList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}




