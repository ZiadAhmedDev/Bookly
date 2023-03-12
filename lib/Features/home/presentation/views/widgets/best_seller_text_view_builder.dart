import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../constants.dart';
import 'book_rating_builder.dart';

class BestSellerTextViewBuilder extends StatelessWidget {
  const BestSellerTextViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: Text(
              'Harry Potter and the \nGoblet of Fire',
              style: FontData.textStyle20.copyWith(fontFamily: kGtSectraFine),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            'J.K. Rowling',
            style: FontData.textStyle14,
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
                '19.99 €',
                style:
                    FontData.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const BookRatingBuilder()
            ],
          )
        ],
      ),
    );
  }
}
