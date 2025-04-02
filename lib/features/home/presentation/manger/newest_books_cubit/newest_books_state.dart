part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksSucsses extends NewestBooksState {
  final List<Bookmodel> books;
  const NewestBooksSucsses({required this.books});
}

final class NewestBooksFailuer extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailuer({required this.errorMessage});
}

final class NewestBooksLoading extends NewestBooksState {}
