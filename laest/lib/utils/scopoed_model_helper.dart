
import 'package:flutter/cupertino.dart';
import 'package:goodliving/scoped_model/city.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedModelHelper{
  static T getModel<T extends Model>(BuildContext context){
    return ScopedModel.of<T>(context,rebuildOnChange: true);
  }

//  static String getAreaId(context){
//    return ScopedModelHelper.getModel<CityModel>(context){
//      Config.AvailableCitys.first.id;
//    }
//  }
}