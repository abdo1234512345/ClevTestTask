import 'package:clevtask/Features/Details_view/presentation/views/details_view.dart';
import 'package:clevtask/Features/myCollection/presentation/views/collection_view.dart';
import 'package:clevtask/Features/sign%20in/presentation/views/sign_in_view.dart';
import 'package:clevtask/Features/splash_view/presentation/views/splash_view.dart';
import 'package:clevtask/Features/welcome_view/presentation/views/welcome_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case WelcomeView.routeName:
      return MaterialPageRoute(builder: (context) => const WelcomeView());
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case CollectionView.routeName:
      return MaterialPageRoute(builder: (context) => const CollectionView());
    case DetailsView.routeName:
      return MaterialPageRoute(builder: (context) => const DetailsView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
