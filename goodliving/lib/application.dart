
import 'package:goodliving/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';


class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);

    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.green),
      onGenerateRoute: router.generator,
    );
  }
}
