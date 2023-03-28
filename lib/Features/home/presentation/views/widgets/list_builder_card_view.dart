import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/widgets/circular_progress_indicator.dart';
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../manger/feature_books_cubit/feature_books_cubit.dart';
import 'cache_image_widget.dart';

class ListBuilderCardView extends StatelessWidget {
  const ListBuilderCardView({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: height ?? MediaQuery.of(context).size.height * .30,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => GoRouter.of(context)
                    .push(AppRouter.kBookDetails, extra: state.books[index]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: BookFeatureCardView(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              ""),
                ),
              ),
            ),
          );
        } else if (state is FeatureBooksError) {
          return CustomErrorMessage(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CircleProgress();
        }
      },
    );
  }
}

class BookFeatureCardView extends StatelessWidget {
  const BookFeatureCardView({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 3.9,
      child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: CacheImageWidget(
            image: imageUrl,
            fit: BoxFit.fill,
          )),
    );
  }
}
