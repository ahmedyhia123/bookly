import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.getFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailuer(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(FeaturedBooksSucsses(books: books));
      },
    );
  }
}
