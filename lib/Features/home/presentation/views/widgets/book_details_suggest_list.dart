import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/styles.dart';
import 'list_builder_card_view.dart';

class BookDetailsSuggestionSection extends StatelessWidget {
  const BookDetailsSuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text(
          'You can also like',
          style: FontData.textStyle16,
        ),
        SizedBox(
          height: 10,
        ),
        BookDetailsSuggestListBuilder(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

class BookDetailsSuggestListBuilder extends StatelessWidget {
  const BookDetailsSuggestListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
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
