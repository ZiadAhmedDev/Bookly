import 'package:bookly/Features/home/presentation/views/widgets/book_details_suggest_list.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_details_text.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_detail_appBar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/list_builder_card_view.dart';
import 'package:flutter/material.dart';

class ShowBookDetailsView extends StatelessWidget {
  const ShowBookDetailsView({super.key});

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
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 76),
                      child: BookFeatureCardView(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const BooksDetailsText(),
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
