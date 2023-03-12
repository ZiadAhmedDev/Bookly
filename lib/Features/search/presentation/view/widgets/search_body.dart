import 'package:bookly/Features/search/presentation/view/widgets/search_appBar.dart';
import 'package:bookly/Features/search/presentation/view/widgets/search_list_builder.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/styles.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SearchBar(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Search Results',
              style: FontData.textStyle16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: SearchBody())
        ],
      ),
    );
  }
}
