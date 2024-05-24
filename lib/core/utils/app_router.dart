import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data_layer/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data_layer/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books/simillar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/books_details_view.dart';
import 'package:bookly_app/features/search/presentation_layer/views/search_view.dart';
import 'package:bookly_app/features/shimmer_loading/shimmer_loading_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash_feature/presentation_layer/views/splash_view.dart';

abstract class AppRouter {
  static const shimmerLoadingView = '/shimmerLoadingView';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: shimmerLoadingView, builder: (context, state) => const ShimmerLoadingView()),
    GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    GoRoute(path: kBookDetailsView, builder: (context, state) =>
        BlocProvider(
            create: (context) => SimilarBooksCubit( getIt.get<HomeRepoImpl>()),
            child:  BookDetailsView(bookModel: state.extra as BookModel,))),
    GoRoute(path: kSearchView, builder: (context, state) => const SearchView()),
  ]);
}
