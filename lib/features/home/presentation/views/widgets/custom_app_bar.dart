import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset('assets/icons/Untitled-1.png',width: 40,color: Colors.white.withOpacity(.9),
        ),
        const SizedBox(width: 8,),
        Image.asset('assets/images2/bookly_image.png',width: 90,color: Colors.white.withOpacity(.9),),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView,);
          },
          icon: Icon(Icons.search,color: Colors.white.withOpacity(.9),),
        ),
      ],
    );
  }
}
