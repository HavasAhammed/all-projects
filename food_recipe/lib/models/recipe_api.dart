import 'dart:convert';
// import 'dart:html';
import 'package:food_recipe/models/recipe.dart';
import 'package:http/http.dart' as http;
class RecipeApi{


//     const axios = require("axios");

// const options = {
//   method: 'GET',
//   url: 'https://yummly2.p.rapidapi.com/feeds/list',
//   params: {limit: '24', start: '0'},
  // headers: {
  //   'X-RapidAPI-Key': 'c03d9429femsh7e9d7f67a452cbap1eb622jsne169da9ea189',
  //   'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
  // }
// };

// axios.request(options).then(function (response) {
// 	console.log(response.data);
// }).catch(function (error) {
// 	console.error(error);
// });

static Future<List<Recipe>> getRecipe() async{

  var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list', 
  {"limit": '24', "start": '0', 
  "tag" : 'list.recipe.popular'
  });
  final response = await http.get(uri, headers: {
    'X-RapidAPI-Key': 'c03d9429femsh7e9d7f67a452cbap1eb622jsne169da9ea189',
    'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
    'useQueryString' : "true"
  } );

  Map data = jsonDecode(response.body);
  List _temp = [];
  for (var i in data['feed']){
    _temp.add(i['content']['details']);    
  }
  return Recipe.recipesFromSnapshot(_temp);
}
}