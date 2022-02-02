import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smritiecommercetest/bloc/blocs/wishlist_bloc.dart';

import 'package:smritiecommercetest/widgets/product_card.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(" Wishlist "),
      ),

      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return CircularProgressIndicator();
          }
          if (state is WishlistLoaded) {
            return GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 16,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2.25,
                ),
                itemCount: state.wishlist.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: ProductCard(
                      product:state.wishlist.products[index],
                      widthFactor: 1.1,
                      additionalButtons: true,
                    ),
                  );
                });
          }
           return Text('Something went wrong!');
        },
      ),
    );
  }
}




              // return GridView.builder(
              // padding: const EdgeInsets.symmetric(
              //   horizontal: 8.0,
              //   vertical: 16,
              // ),
              // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 1,
              //   childAspectRatio: 2.25,
              // ),
              // itemCount: Product.products.length,
              // itemBuilder: (BuildContext context, int index) {
              //   return Center(
              //     child: ProductCard(
              //       product: Product.products[index],
              //       widthFactor: 1.1,
              //       additionalButtons: true,
              //     ),
              //   );
              // });