import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import 'widgets/best_seller_list_view.dart';
import 'widgets/featured_books_list_view.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FeaturedBooksListView(),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Best Seller',style: Styles.textStyle18,),
                  BestSellerListView(),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
