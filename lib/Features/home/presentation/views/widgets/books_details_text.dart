import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_button.dart';
import 'book_rating_builder.dart';

class BooksDetailsText extends StatelessWidget {
  const BooksDetailsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'The Jungle Book',
          style: FontData.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: FontData.textStyle18.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        const BookRatingBuilder(),
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
