import '../../../../../core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListBuilderCardView extends StatelessWidget {
  const ListBuilderCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .34,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: BookFeatureCardView(),
        ),
      ),
    );
  }
}

class BookFeatureCardView extends StatelessWidget {
  const BookFeatureCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 3.9,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          AssetsData.kBookImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
