import 'package:bookly/Features/home/presentation/views/widgets/cache_image_widget.dart';
import 'package:flutter/cupertino.dart';

class BestSellerImageViewBuilder extends StatelessWidget {
  const BestSellerImageViewBuilder({super.key, required this.imgUrl});
  final String imgUrl;
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
            child: CacheImageWidget(
              image: imgUrl,
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
