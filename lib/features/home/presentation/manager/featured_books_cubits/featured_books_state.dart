part of 'featured_books_cubit.dart';
abstract class FeaturedBooksState extends Equatable {
  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  FeaturedBooksSuccess({required this.books});
}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksFailure({required this.errorMessage});
}
