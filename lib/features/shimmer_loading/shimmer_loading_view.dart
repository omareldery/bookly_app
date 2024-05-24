import 'package:bookly_app/features/shimmer_loading/shimmer_body.dart';
import 'package:flutter/material.dart';

class ShimmerLoadingView extends StatelessWidget {
  const ShimmerLoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BooksItemListShimmer();
  }
}