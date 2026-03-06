import 'package:clean_architecture/modules/home/presentation/views/book_details.dart';
import 'package:clean_architecture/modules/home/presentation/views/home_view.dart';
import 'package:clean_architecture/modules/search/presentation/views/search_view.dart';
import 'package:clean_architecture/modules/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String kSplashScreen = '/';
  static const String kHomeView = '/homeView';
  static const String kBookDetails = '/bookDetails';
  static const String kSearch = '/searchScreen';

  static final route = GoRouter(
    routes: [
      GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => const BookDetails(),
      ),
      GoRoute(path: kSearch, builder: (context, state) => const SearchScreen()),
    ],
  );
}
