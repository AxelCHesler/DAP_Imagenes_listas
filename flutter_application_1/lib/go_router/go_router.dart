import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/inicio_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/inicio',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/inicio', builder: (context, state) => const InicioScreen()),
    GoRoute(
      path: '/home_screen',
      builder: (context, state) {
        final data = state.extra as Map<String, String>;
        return HomeScreen(
          nombre: data["nombre"]!,
          descripcion: data["descripcion"]!,
          imagen: data["imagen"]!,
        );
      },
    ),
  ],
);
