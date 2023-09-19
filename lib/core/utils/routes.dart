import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/spalsh/presentation/views/splash_view.dart';

abstract class Routes{
  static const kHomeView='/homeView';
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
    ],
  );
}