import 'package:flutter/material.dart';
import 'package:m/badges%20center/models/badge_model.dart';
import 'package:m/badges%20center/widgets/badges_list_item.dart';

class ActivityTab extends StatefulWidget {
  const ActivityTab({
    super.key,
  });

  @override
  State<ActivityTab> createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab> {
  List<BadgeModel> badges = [
    BadgeModel(badgeImage: "assets/Badges/4b.png", badgeName: "LVL 50"),
    BadgeModel(badgeImage: "assets/Badges/5b.png", badgeName: "LVL 20"),
    BadgeModel(badgeImage: "assets/Badges/6b.png", badgeName: "LVL 70"),
    BadgeModel(badgeImage: "assets/Badges/7b.png", badgeName: "LVL 60"),
    BadgeModel(badgeImage: "assets/Badges/8b.png", badgeName: "LVL 80"),
    BadgeModel(badgeImage: "assets/Badges/9b.png", badgeName: "LVL 30"),
    BadgeModel(badgeImage: "assets/Badges/5b.png", badgeName: "LVL 20"),
    BadgeModel(badgeImage: "assets/Badges/6b.png", badgeName: "LVL 70"),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHight = MediaQuery.of(context).size.height;
    return Container(
      // color: Colors.transparent,
      child: Column(children: [
        Container(
          width: screenWidth,
          height: screenHight * 0.32,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeInfo(
                  bgImage: 'assets/702.png',
                  screenWidth: screenWidth,
                  opacity: 1.0,
                  badgeModel: badges[currentIndex]),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.6),
                    border: Border.all(color: Colors.brown, width: 2),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(badges.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: BadgesListItem(
                                bgImage: "assets/709.png",
                                opacity: 0.75,
                                screenWidth: screenWidth,
                                badgeModel: badges[index]),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
