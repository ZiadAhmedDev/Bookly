import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_route.dart';

class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar(
      {super.key, this.horizontal = 30, this.vertical = 20});
  final double horizontal;
  final double vertical;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
      ),
    );
  }
}
