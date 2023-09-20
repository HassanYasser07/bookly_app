import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/spalsh/presentation/views/splash_view.dart';

abstract class Routes{
  static const kHomeView='/homeView';
  static const kBoolDetailsView='/BoolDetailsView';

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
        path: kBoolDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}