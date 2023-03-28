import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/error/failure.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/circular_progress_indicator.dart';
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'best_seller_image_view_builder.dart';
import 'book_rating_builder.dart';

class BestSellerListViewItemBuilder extends StatelessWidget {
  const BestSellerListViewItemBuilder({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails, extra: book);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            BestSellerImageViewBuilder(
              imgUrl: book.volumeInfo.imageLinks?.smallThumbnail ?? "",
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo.title ?? '',
                      style: FontData.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    book.volumeInfo.authors?[0] ?? '',
                    style: FontData.textStyle14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: FontData.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRatingBuilder(
                        rating: book.volumeInfo.averageRating?.round() ?? 0,
                        count: book.volumeInfo.ratingsCount ?? 0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BestSellerListViewBuilder extends StatelessWidget {
  const BestSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.newBooks.length,
            itemBuilder: (context, index) =>
                BestSellerListViewItemBuilder(book: state.newBooks[index]),
          );
        } else if (state is NewestBooksError) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CircleProgress();
        }
      },
    );
  }
}
