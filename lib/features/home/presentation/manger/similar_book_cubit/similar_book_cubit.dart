import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String catagotr}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.getSimilerBooks(category: catagotr);
    result.fold(
      (failure) {
        emit(SimilarBookFaliar(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(SimilarBookSucsse(books: books));
      },
    );
  }
}
