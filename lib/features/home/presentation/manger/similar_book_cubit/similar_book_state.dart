part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitial extends SimilarBookState {}

final class SimilarBookSucsse extends SimilarBookState {
  final List<Bookmodel> books;
  const SimilarBookSucsse({required this.books});
}

final class SimilarBookLoading extends SimilarBookState {}

final class SimilarBookFaliar extends SimilarBookState {
  final String errorMessage;

  const SimilarBookFaliar({required this.errorMessage});
}
