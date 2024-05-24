import 'package:bookly_app/core/general_widgets/custom_error_message.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubits/featured_books_cubit.dart';
import 'package:bookly_app/features/shimmer_loading/shimmer_loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'books_item_list.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: ()=>{
                      GoRouter.of(context).push('/BookDetailsView',extra: state.books[index])
                    },
                      child: BooksItemList(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',)),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const SizedBox(
            height: 800,
              child: ShimmerLoadingView());
        }
      },
    );
  }
}
