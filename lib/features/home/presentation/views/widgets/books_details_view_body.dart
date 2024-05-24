import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data_layer/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_books_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_list_view.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You Can also like',
                        style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                      )),
                ),
                const Expanded(child: SimilarListView()),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
