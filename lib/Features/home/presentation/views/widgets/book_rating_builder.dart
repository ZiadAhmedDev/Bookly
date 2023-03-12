import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRatingBuilder extends StatelessWidget {
  const BookRatingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: FontData.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(235)',
          style: FontData.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
