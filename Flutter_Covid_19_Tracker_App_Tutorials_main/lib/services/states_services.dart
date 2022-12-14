import 'dart:convert';

import 'package:covid_tracker/model/world_states_model.dart';
import 'package:covid_tracker/services/utilities/app_url.dart';
import 'package:http/http.dart' as http;

class StatesServices {


  Future<WorldStatesModel> fetcWorkdStatesRecords () async {

    final response = await http.get(Uri.parse(AppUrl.worldStateApi));

    if(response.statusCode == 200){

      var data = jsonDecode(response.body);
      return WorldStatesModel.fromJson(data);

    }else {
      throw Exception('Error');
    }
  }

   Future<List<dynamic>> countriesListApi () async {
    var data ;

    final response = await http.get(Uri.parse(AppUrl.countrieList));

    if(response.statusCode == 200){

      var data = jsonDecode(response.body);
      return data;

    }else {
      throw Exception('Error');
    }
  }
}