import 'package:bookly/Features/home/presentation/views/widgets/custom_book_detail_appBar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/list_builder_card_view.dart';
import 'package:flutter/material.dart';

class ShowBookDetailsView extends StatelessWidget {
  const ShowBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomBookDetailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 106),
            child: BookFeatureCardView(),
          )
        ],
      ),
    );
  }
}
