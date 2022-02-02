// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smritiecommercetest/bloc/food_bloc.dart';
// import 'package:smritiecommercetest/bloc/food_event.dart';
// import 'package:smritiecommercetest/bloc/food_state.dart';
// import 'package:smritiecommercetest/elements/error.dart';
// import 'package:smritiecommercetest/elements/list.dart';
// import 'package:smritiecommercetest/elements/loading.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late FoodBloc foodBloc;

//   @override
//   void initState() {
//     foodBloc = BlocProvider.of<FoodBloc>(context);
//     foodBloc.add(FetchFoodEvent());
//     //searchFoodBloc.add(TextChanged(query: ))
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   // actions: [
//       //   //   IconButton(
//       //   //       icon: Icon(Icons.search),
//       //   //       onPressed: () {
//       //   //         showSearch(
//       //   //             context: context,
//       //   //             delegate: FoodSearch(
//       //   //                 searchBloc: BlocProvider.of<SearchBloc>(context)));
//       //   //       }),
//       //   // ],
//       // ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
//             if (state is FoodInitialState) {
//               return buildLoading();
//             } else if (state is FoodLoadingState) {
//               return buildLoading();
//             } else if (state is FoodLoadedState) {
//               return buildHintsList(state.recipes);
//             } else if (state is FoodErrorState) {
//               return buildError(state.message);
//             }
//             return InkWell(
//               highlightColor: Colors.black,
//               child: const SizedBox(
//               height: 15,
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
