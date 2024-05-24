import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/data_layer/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BooksItemList extends StatelessWidget {
  const BooksItemList({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: CachedNetworkImage(imageUrl: imageUrl,
        fit: BoxFit.fill,
        errorWidget: (context, url, error) => const Icon(Icons.error_outline),
        )
      ),
    );
  }
}


