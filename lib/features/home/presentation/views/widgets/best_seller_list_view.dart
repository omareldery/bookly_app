import 'package:bookly_app/core/general_widgets/custom_error_message.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubits/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  child: BestSellerListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
// SizedBox(
// width: 200.0,
// height: 100.0,
// child: Shimmer.fromColors(
// baseColor: Colors.red,
// highlightColor: Colors.yellow,
// child: Text(
// 'Shimmer',
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 40.0,
// fontWeight:
// FontWeight.bold,
// ),
// ),
// ),
// );
