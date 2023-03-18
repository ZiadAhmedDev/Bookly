import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/assets.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/circular_progress_indicator.dart';
import '../../../../../core/widgets/custom_error_message.dart';
import '../../manger/feature_books_cubit/feature_books_cubit.dart';

class ListBuilderCardView extends StatelessWidget {
  const ListBuilderCardView({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeatureBooksCubit, FeatureBooksState>(
      listener: (context, state) {
        if (state is FeatureBooksError) {
          CustomErrorMessage(
            errorMessage: "",
          );
        } else if (state is FeatureBookSuccess) {
          CircleProgressIndicator();
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: height ?? MediaQuery.of(context).size.height * .34,
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
      },
    );
  }
}

class BookFeatureCardView extends StatelessWidget {
  const BookFeatureCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 3.9,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          AssetsData.kBookImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
