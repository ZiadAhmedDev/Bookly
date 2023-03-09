import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class BestSellerImageViewBuilder extends StatelessWidget {
  const BestSellerImageViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            AssetsData.kBookImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
