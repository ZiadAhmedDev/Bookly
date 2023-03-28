import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manger/fetch_similar_cuibt/fetch_similar_cubit.dart';
import 'package:bookly/core/widgets/circular_progress_indicator.dart';
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocBuilder<FetchSimilarCubit, FetchSimilarState>(
      builder: (context, state) {
        if (state is FetchSimilarSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.book.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: BookFeatureCardView(
                    imageUrl:
                        state.book[index].volumeInfo.imageLinks?.thumbnail ??
                            ""),
              ),
            ),
          );
        } else if (state is FetchSimilarError) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CircleProgress();
        }
      },
    );
  }
}
