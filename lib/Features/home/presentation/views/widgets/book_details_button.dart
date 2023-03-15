import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/widgets.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: BookDetailsCustomButton(
            text: '19.99 €',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
          ),
        ),
        Expanded(
          child: BookDetailsCustomButton(
            text: 'Free Preview',
            textColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 243, 157, 27),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
          ),
        )
      ],
    );
  }
}
