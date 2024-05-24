import 'package:bookly_app/features/home/presentation/manager/similar_books/simillar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'books_item_list.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
       if (state is SimilarBooksSuccess) {
         return SizedBox(
           child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: state.books.length,
               itemBuilder: (context, index) {
                 return  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8),
                   child: BooksItemList(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',),
                 );
               }),
         );
       }  else if (state is  SimilarBooksFailure) {
         return Center(child: Text(state.errorMessage));
       } else {
         return const Center(child: CircularProgressIndicator());
       }
      },
    );
  }
}
