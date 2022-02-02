
// import 'package:smritiecommercetest/bloc/food_event.dart';
// import 'package:smritiecommercetest/bloc/food_state.dart';
// import 'package:smritiecommercetest/data/model/food.dart';
// import 'package:smritiecommercetest/data/repositories/food_repository.dart';


// class FoodBloc extends Bloc<FoodEvent, FoodState> {
//   FoodRepository repository;

//   FoodBloc({ required this.repository}) : super(null);

//   FoodState get initialState => FoodInitialState();
//   @override
//   Stream<FoodState> mapEventToState(FoodEvent event) async* {
//     if (event is FetchFoodEvent) {
//       yield FoodLoadingState();

//       try {
//         List<Recipe> recipes = await repository.getFoods();
//         yield FoodLoadedState(recipes: recipes);
//       } catch (e) {
//         yield FoodErrorState(message: e.toString());
//       }
//     }
//   }
// }

// class FoodBloc extends Bloc<FoodEvent, FoodState> {
//   FoodRepository repository;

//   FoodBloc({ required this.repository}) : super(null);

//   FoodState get initialState => FoodInitialState();
//   @override
//   Stream<FoodState> mapEventToState(FoodEvent event) async* {
//     if (event is FetchFoodEvent) {
//       yield FoodLoadingState();

//       try {
//         List<Recipe> recipes = await repository.getFoods();
//         yield FoodLoadedState(recipes: recipes);
//       } catch (e) {
//         yield FoodErrorState(message: e.toString());
//       }
//     }
//   }
// }