import 'package:bookly/Features/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/home/presentation/views/show_book_details_view.dart';
import '../../Features/splash/Presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetails';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => const ShowBookDetailsView(),
      ),
    ],
  );
}
