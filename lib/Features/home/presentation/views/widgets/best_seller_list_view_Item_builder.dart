import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'best_seller_image_view_builder.dart';
import 'best_seller_text_view_builder.dart';

class BestSellerListViewItemBuilder extends StatelessWidget {
  const BestSellerListViewItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: Row(
        children: const [
          BestSellerImageViewBuilder(),
          SizedBox(
            width: 20,
          ),
          BestSellerTextViewBuilder()
        ],
      ),
    );
  }
}

class BestSellerListViewBuilder extends StatelessWidget {
  const BestSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: const BestSellerListViewItemBuilder()),
    );
  }
}
