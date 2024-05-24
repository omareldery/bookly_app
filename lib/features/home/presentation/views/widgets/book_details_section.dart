import 'package:bookly_app/core/functions/launch_url.dart';
import 'package:bookly_app/core/general_widgets/custom_books_price_button.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data_layer/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'best_rating_widget.dart';
import 'books_item_list.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.180, vertical: 8),
          child: BooksItemList(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(bookModel.volumeInfo.authors![0], style: Styles.textStyle18),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          rating: bookModel.volumeInfo.averageRating?.round() ?? 0,
        ),
        const SizedBox(
          height: 24,
          width: 8,
        ),
         PreviewBookDetailsButton(bookModel: bookModel  ,),
      ],
    );
  }
}
class PreviewBookDetailsButton extends StatelessWidget {
  const PreviewBookDetailsButton({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {

    return  Row(
      children: [
        Expanded(
          child: CustomBookPriceButton(
            onPressed:  () async {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
            backgroundColor: Colors.white,
            textColor: Colors.black,
            title: 'Free',
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                16,
              ),
              bottomLeft: Radius.circular(
                16,
              ),
            ),
          ),
        ),
         Expanded(
          child: CustomBookPriceButton(
            onPressed:  () async {
             launchCustomUrl(context, bookModel.volumeInfo.previewLink);
               },
            backgroundColor: const Color(0xffE16E5D),
            textColor: Colors.white,
            title: getText(),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                16,
              ),
              bottomRight: Radius.circular(
                16,
              ),
            ),
          ),
        ),
      ],
    );
  }
  String getText() {
   if (bookModel.volumeInfo.previewLink == null) {
     return 'Not Available';
   } else {
     return 'Preview';
   }
  }
}
