// import 'dart:convert';

// import 'package:smritiecommercetest/data/model/food.dart';

// import 'package:http/http.dart'as http;


// abstract class FoodRepository {
//   Future<List<Recipe>> getFoods();
// }

// class FoodRepositoryImp1 extends FoodRepository {
//   @override
//   Future<List<Recipe>> getFoods() async {
//     var response =
//         await http.get('https://forkify-api.herokuapp.com/api/search?q=pizza#');
//     if (response.statusCode == 200) {
//       var data = json.decode(response.body);
//       List<Recipe> recipes = Food.fromJson(data).recipes;
//       return recipes;
//     } else {
//       throw Exception('failed');
//     }
//   }
// }
