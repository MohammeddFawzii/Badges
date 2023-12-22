import 'package:flutter/material.dart';

import '../widgets/badges_center_view_body.dart';

class BadgesCenterView extends StatelessWidget {
  const BadgesCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const BadgesCenterViewBody()),
    );
  }
}
