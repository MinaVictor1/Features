import 'package:breaking_bad/constant/strings.dart';
import 'package:breaking_bad/presentation/screens/characters_screen.dart';
import 'package:breaking_bad/presentation/screens/charactersdetailes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainScreen:
        return MaterialPageRoute(builder: (_) => const CharacterScreen());
      case characterDetailesscreen:
        return MaterialPageRoute(
            builder: (_) => const CharacterDetailsScreen());
    }
    return null;
  }
}
