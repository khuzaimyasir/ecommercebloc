// import 'package:flutter/material.dart';
// // import 'package:smritiecommercetest/data/model/product_model.dart';
// import 'package:smritiecommercetest/json/constants.dart';
// import 'package:smritiecommercetest/screens/account_page.dart';
// import 'package:smritiecommercetest/screens/feeds_screen.dart';
// // import 'package:smritiecommercetest/screens/cart_page.dart';
// // import 'package:shopping_ui/json/constant.dart';
// // import 'package:smritiecommercetest/screens/feeds_screen.dart';
// import 'package:smritiecommercetest/screens/wishlist_screen.dart';
// // import 'package:smritiecommercetest/screens/home_page.dart';
// import 'package:smritiecommercetest/theme/colors.dart';

// class RootApp extends StatefulWidget {
//   @override
//   _RootAppState createState() => _RootAppState();
// }

// class _RootAppState extends State<RootApp> {
//   int activeTab = 0;
//   // appbar
//   Null appbar;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white,
//       bottomNavigationBar: getFooter(),
//       // appBar: getAppBar(),
//       body: getBody(),
//     );
//   }

//   Widget getBody() {
//     return IndexedStack(
//       index: activeTab,
//       children: [
//         // ProductScreen(product: ,),
//         WishlistScreen(),
//         // FeedsScreen(),
//         AccountPage(),
//         // CartPage(),
//         // MorePage()
//       ],
//     );
//   }

// //   Widget getAppBar() {
// //     switch (activeTab) {
// //       case 0:
// //         appbar = null;
// //         break;
// //       case 1:
// //         appbar = null;
// //         break;
// //       case 2:
// //         return AppBar(
// //           elevation: 0.8,
// //           backgroundColor: white,
// //           title: Text(
// //             "ACCOUNT",
// //             style: TextStyle(color: black),
// //           ),
// //         );
// //       case 3:
// //         return AppBar(
// //           elevation: 0.8,
// //           backgroundColor: white,
// //           title: Text(
// //             "CART",
// //             style: TextStyle(color: black),
// //           ),
// //         );
// //       case 4:
// //         return AppBar(
// //           elevation: 0.8,
// //           backgroundColor: white,
// //           title: Text(
// //             "MORE",
// //             style: TextStyle(color: black),
// //           ),
// //         );
// //       default:
// //     }
// //   }
// // }

//   Widget getFooter() {
//     return Container(
//       height: 80,
//       decoration: BoxDecoration(
//           color: white,
//           border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
//       child: Padding(
//         padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
//         child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: List.generate(itemsTab.length, (index) {
//               return IconButton(
//                   icon: Icon(
//                     itemsTab[index]['icon'],
//                     size: itemsTab[index]['size'],
//                     color: activeTab == index ? accent : black,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       activeTab = index;
//                     });
//                   });
//             })),
//       ),
//     );
//   }
// }
