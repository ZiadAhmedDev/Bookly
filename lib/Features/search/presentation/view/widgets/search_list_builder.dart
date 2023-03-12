import 'package:flutter/cupertino.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_Item_builder.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) => const BestSellerListViewItemBuilder(),
    );
  }
}
