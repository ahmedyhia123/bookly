part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksSucsses extends FeaturedBooksState {
  final List<Bookmodel> books;
  const FeaturedBooksSucsses({required this.books});
}

final class FeaturedBooksFailuer extends FeaturedBooksState {
  final String errorMessage;

  const FeaturedBooksFailuer({required this.errorMessage});
}

final class FeaturedBooksLoading extends FeaturedBooksState {}
