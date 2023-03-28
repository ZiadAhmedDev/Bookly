import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_button.dart';
import 'book_rating_builder.dart';

class BooksDetailsText extends StatelessWidget {
  const BooksDetailsText({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          book.volumeInfo.title!,
          style: FontData.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          book.volumeInfo.authors?[0] ?? '',
          style: FontData.textStyle18.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        BookRatingBuilder(
          count: book.volumeInfo.ratingsCount ?? 0,
          rating: book.volumeInfo.averageRating?.round() ?? 0,
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: BookDetailsButton(),
        )
      ],
    );
  }
}
