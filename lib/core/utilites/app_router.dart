import 'package:bookly/core/utilites/services_locator.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemention.dart';
import 'package:bookly/features/home/presentation/manger/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final kHomeView = '/homeView';
  static final kBookDetails = '/bookDetails';
  static final kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetails,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) =>
                      SimilarBookCubit(getIt.get<HomeRepoImplemention>()),
              child: BookDetailsView(bookModel: state.extra as Bookmodel),
            ),
      ),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
