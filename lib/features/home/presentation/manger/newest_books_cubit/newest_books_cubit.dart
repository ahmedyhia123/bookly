import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.getNewsetBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailuer(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(NewestBooksSucsses(books: books));
      },
    );
  }
}
