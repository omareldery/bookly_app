
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.count, required this.rating});
 final MainAxisAlignment mainAxisAlignment;
 final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {

    return  Row(
      mainAxisAlignment: mainAxisAlignment,
        children:   [
          const Icon(
            Icons.star_rounded,
            color: Colors.yellow,
          ),
          const SizedBox(width: 4,),
          Text(rating.toString(),style: Styles.textStyle16,),
          const SizedBox(width: 5,),
           Opacity(opacity: .5,
          child: Text('($count)',style: Styles.textStyle14,))
        ]);
  }
}
