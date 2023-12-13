import 'package:flutter/material.dart';
import 'package:mk1_companion/Pages/favorites.dart';
import 'package:mk1_companion/Pages/home.dart';
import 'package:mk1_companion/Pages/search.dart';
import 'package:mk1_companion/provider/favorite_provider.dart';
import 'package:provider/provider.dart';
import 'Pages/welcome_screen.dart';

void main() => runApp(
    MyApp()
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomePage(),
        routes: {
          '/homepage': (context) => const HomePage(),
          '/searchpage': (context) => const SearchPage(),
          '/favoritepage': (context) => const FavoritePage(),
          '/welcomepage': (context) => const WelcomePage(),
        },
      ),

    );
  }
}
