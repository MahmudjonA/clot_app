import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/route/rout_names.dart';
import 'core/route/route_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteNames.infoPage,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
    );
  }
}
