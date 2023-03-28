import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manger/fetch_similar_cuibt/fetch_similar_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_suggest_list.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_details_text.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_detail_appBar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/list_builder_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowBookDetailsView extends StatefulWidget {
  const ShowBookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<ShowBookDetailsView> createState() => _ShowBookDetailsViewState();
}

class _ShowBookDetailsViewState extends State<ShowBookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FetchSimilarCubit>(context).fetchSimilarBooks(
        categories: widget.bookModel.volumeInfo.categories?[0] ??
            "Dodge Dart automobile");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailAppBar(
                    horizontal: 0,
                    vertical: 0,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 76),
                      child: BookFeatureCardView(
                          imageUrl: widget
                                  .bookModel.volumeInfo.imageLinks?.thumbnail ??
                              ""),
                    ),
                  ),
                  const SizedBox(height: 30),
                  BooksDetailsText(book: widget.bookModel),
                  const Expanded(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  const BookDetailsSuggestionSection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
