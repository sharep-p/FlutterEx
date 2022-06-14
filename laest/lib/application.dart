import 'package:goodliving/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:goodliving/scoped_model/city.dart';
import 'package:goodliving/scoped_model/room_filter.dart';
import 'package:scoped_model/scoped_model.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  //CityModel
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);

    return ScopedModel<CityModel>(
        model: CityModel(),
        child:ScopedModel<FilterBarModel>(
          model: FilterBarModel(),
          child: MaterialApp(
            theme: ThemeData(colorSchemeSeed: Colors.red),
            onGenerateRoute: router.generator,
          ),
        )
    ) ;
  }
}
