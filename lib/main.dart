import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smritiecommercetest/app_router.dart';
import 'package:smritiecommercetest/bloc/blocs/wishlist_bloc.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smritiecommercetest/bloc/food_bloc.dart';
// import 'package:smritiecommercetest/data/repositories/food_repository.dart';

import 'package:smritiecommercetest/screens/product_screen.dart';
// // import 'package:smritiecommercetest/screens/cart_page.dart';
// import 'package:smritiecommercetest/screens/feeds_screen.dart';
// import 'package:smritiecommercetest/screens/home_page.dart';
// import 'package:smritiecommercetest/screens/root_app.dart';
// import 'package:smritiecommercetest/screens/wishlist_screen.dart';
// import 'package:smritiecommercetest/utils/routes.dart';

void main(List<String> args) {
  runApp((MyApp()));
  
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (_) => CartBloc()..add(LoadCart()),
        // ),
        // BlocProvider(
        //   create: (context) => CheckoutBloc(
        //     cartBloc: context.read<CartBloc>(),
        //     checkoutRepository: CheckoutRepository(),
        //   ),
        // ),
        BlocProvider(
          create: (_) => WishlistBloc()..add(StartWishlist()),
        ),
        // BlocProvider(
        //   create: (_) => CategoryBloc(
        //     categoryRepository: CategoryRepository(),
        //   )..add(LoadCategories()),
        // ),
        // BlocProvider(
        //   create: (_) => ProductBloc(
        //     productRepository: ProductRepository(),
        //   )..add(LoadProducts()),
        // )
      ],
      child: MaterialApp(
        title: 'Zero To Unicorn',
        debugShowCheckedModeBanner: false,
        // theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: ProductScreen.routeName,
      ),
    );
  }
}












// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//          create: (_) => WishlistBloc()..add(StartWishlist()),
//         ),
//       ],
//       child: MaterialApp(
//         // home: BlocProvider(
//         //   create: (context) => FoodBloc(repository: FoodRepositoryImp1()),
//         // child: RootApp()),
//         home: RootApp(),
//         // themeMode: ThemeMode.light,
//         // theme: MyTheme.lightTheme(context),
//         // darkTheme: MyTheme.darkTheme(context),
//         debugShowCheckedModeBanner: false,
//         initialRoute: Myroutes.rootRoute,
//         routes: {
//           // Myroutes.homeroute: (context) => HomePage(),
//           //   "/": (context) => LoginPage(),
//             // Myroutes.feedroute: (context) => FeedsScreen(product: null,),
//           // Myroutes.cartroute: (context) => CartPage(),
//           Myroutes.rootRoute: (context) => RootApp(),
//           Myroutes.accountroute: (context) => AccountPage(),
//           // Myroutes.productsroute: (context) => ProductScreen(product: product),
//           Myroutes.wishroute: (context) => WishlistScreen(),
//         },
//       ),
//     );
//   }
// }

// 10days uis project challenge