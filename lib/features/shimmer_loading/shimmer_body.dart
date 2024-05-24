import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BooksItemListShimmer extends StatefulWidget {
  const BooksItemListShimmer({super.key});

  @override
  State<BooksItemListShimmer> createState() => _BooksItemListShimmerState();
}

class _BooksItemListShimmerState extends State<BooksItemListShimmer> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.withOpacity(.7),
                      period: const Duration(seconds: 2),
                      highlightColor: Colors.white.withOpacity(.8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SizedBox(
                            height: 280,
                            width: 220,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.grey.withOpacity(.8),
                              ),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Shimmer.fromColors(
                baseColor:  Colors.grey.withOpacity(.7),
                period: const Duration(seconds: 2),
                highlightColor: Colors.white.withOpacity(.8),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor:  Colors.grey.withOpacity(.7),
                      period: const Duration(seconds: 2),
                      highlightColor: Colors.white.withOpacity(.8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Container(
                                  height: 120,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.8),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(.8),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  const SizedBox(height: 16,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(.8),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16,),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
