import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'list_builder_card_view.dart';
import 'best_seller_list_view_Item_builder.dart';
import 'custom_appBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CustomAppBar(),
              ),
              ListBuilderCardView(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Best Seller',
                  style: FontData.textStyle18,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: BestSellerListViewBuilder(),
          ),
        )
      ],
    );
  }
}
