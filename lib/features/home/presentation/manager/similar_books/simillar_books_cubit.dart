import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data_layer/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data_layer/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'simillar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks(String category) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.toString()));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
