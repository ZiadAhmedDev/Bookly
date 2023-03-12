import 'package:bookly/Features/search/presentation/view/widgets/search_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Searching'),
          centerTitle: true,
        ),
        body: const SearchBodyView());
  }
}
