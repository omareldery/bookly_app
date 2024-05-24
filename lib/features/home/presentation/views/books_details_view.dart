import 'package:bookly_app/features/home/data_layer/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books/simillar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks( widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: BooksDetailsViewBody(
          bookModel:  widget.bookModel,
        ));
  }
}
