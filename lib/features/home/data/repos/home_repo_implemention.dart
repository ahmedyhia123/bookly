import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemention extends HomeRepo {
  @override
  Future<Either<Failure, List<Bookmodel>>> getBestSellerBooks() {
    // TODO: implement getBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> getFeaturedBooks() {
    // TODO: implement getFeaturedBooks
    throw UnimplementedError();
  }
}
