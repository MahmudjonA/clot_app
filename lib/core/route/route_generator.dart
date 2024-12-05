import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/bottom_nav_bar.dart';
import 'package:clot_app/features/auth/sign_up/sign_up.dart';
import 'package:clot_app/features/home/products_categories.dart';
import 'package:clot_app/features/home/shop_categories.dart';
import 'package:clot_app/features/into/splash_page.dart';
import 'package:clot_app/features/auth/sign_up/about.dart';
import 'package:clot_app/features/auth/sign_in/reset_page.dart';
import 'package:clot_app/features/auth/sign_in/send_email.dart';
import 'package:clot_app/features/auth/sign_in/sign_in_email.dart';
import 'package:flutter/material.dart';
import '../../features/auth/sign_in/sing_in_password.dart';

class AppRoute {
  BuildContext context;
  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.signInEmail:
        return MaterialPageRoute(builder: (_) => const SignInEmail());
      case RouteNames.infoPage:
        return MaterialPageRoute(builder: (_) => const InfoPage());
      case RouteNames.signInPassword:
        return MaterialPageRoute(builder: (_) => const SignInPassword());
      case RouteNames.createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAccount());
      case RouteNames.resetPage:
        return MaterialPageRoute(builder: (_) => const ResetPage());
      case RouteNames.sendEmailPage:
        return MaterialPageRoute(builder: (_) => const SendEmail());
      // case RouteNames.homePage:
      //   return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteNames.logInAbout:
        return MaterialPageRoute(builder: (_) => const LogInAbout());
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case RouteNames.shopCategories:
        return MaterialPageRoute(builder: (_) => const ShopCategories());
        case RouteNames.productsCategories:
        return MaterialPageRoute(builder: (_) => const ProductsCategories());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
