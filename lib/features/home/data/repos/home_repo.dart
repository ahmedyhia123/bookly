import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodel>>> getBestSellerBooks();
  Future<Either<Failure, List<Bookmodel>>> getFeaturedBooks();
}
