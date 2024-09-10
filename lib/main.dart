import 'package:d20katter/views/home/home.dart';
import 'package:d20katter/styles/text_theme.dart';
import 'package:d20katter/views/info/about_us.dart';
import 'package:d20katter/views/info/buying_cat.dart';
import 'package:d20katter/views/info/contact.dart';
import 'package:d20katter/views/info/european.dart';
import 'package:d20katter/views/info/faq.dart';
import 'package:d20katter/views/for_sale/for_sale.dart';
import 'package:d20katter/views/links/links.dart';
import 'package:d20katter/views/home/news_list.dart';
import 'package:d20katter/views/our_cats/brago.dart';
import 'package:d20katter/views/our_cats/kakan.dart';
import 'package:d20katter/views/our_cats/litters.dart';
import 'package:d20katter/views/our_cats/our_cats.dart';
import 'package:d20katter/views/our_cats/skuggan.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(D20Website());
}

class D20Website extends StatelessWidget {
  D20Website({super.key});

// GO ROUTER
  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return Home(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const NewsList();
            },
          ),
          GoRoute(
            path: '/aboutUs',
            builder: (BuildContext context, GoRouterState state) {
              return const AboutUs();
            },
          ),
          GoRoute(
            path: '/buyACat',
            builder: (BuildContext context, GoRouterState state) {
              return const BuyACat();
            },
          ),
          GoRoute(
            path: '/contact',
            builder: (BuildContext context, GoRouterState state) {
              return const Contact();
            },
          ),
          GoRoute(
            path: '/european',
            builder: (BuildContext context, GoRouterState state) {
              return const European();
            },
          ),
          GoRoute(
            path: '/faq',
            builder: (BuildContext context, GoRouterState state) {
              return const Faq();
            },
          ),
          GoRoute(
            path: '/ourCats',
            builder: (BuildContext context, GoRouterState state) {
              return const OurCats();
            },
          ),
          GoRoute(
            path: '/litters',
            builder: (BuildContext context, GoRouterState state) {
              return const Litters();
            },
          ),
          GoRoute(
            path: '/kakan',
            builder: (BuildContext context, GoRouterState state) {
              return const Kakan();
            },
          ),
          GoRoute(
            path: '/skuggan',
            builder: (BuildContext context, GoRouterState state) {
              return const Skuggan();
            },
          ),
          GoRoute(
            path: '/brago',
            builder: (BuildContext context, GoRouterState state) {
              return const Brago();
            },
          ),
          GoRoute(
            path: '/forSale',
            builder: (BuildContext context, GoRouterState state) {
              return const ForSale();
            },
          ),
          GoRoute(
            path: '/links',
            builder: (BuildContext context, GoRouterState state) {
              return const Links();
            },
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'D20 katter',
      theme: ThemeData(
        //colorScheme: myColorScheme,
        useMaterial3: true,
        textTheme: myTextTheme,
      ),
    );
  }
}
