import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/core/utilites/api_service.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemention extends HomeRepo {
  final ApiService apiService;
  HomeRepoImplemention(this.apiService);
  @override
  Future<Either<Failure, List<Bookmodel>>> getNewsetBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming',
      );
      List<Bookmodel> books = [];
      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> getFeaturedBooks() {
    // TODO: implement getFeaturedBooks
    throw UnimplementedError();
  }
}
