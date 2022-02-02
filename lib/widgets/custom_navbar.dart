import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smritiecommercetest/bloc/blocs/wishlist_bloc.dart';
import 'package:smritiecommercetest/data/model/product_model.dart';

class CustomNavBar extends StatelessWidget {
  final String screen;
  final Product? product;

  const CustomNavBar({
    Key? key,
    required this.screen,
    this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _selectNavBar(context, screen)!,
        ),
      ),
    );
  }

  List<Widget>? _selectNavBar(context, screen) {
    switch (screen) {
      case '/':
        return _buildNavBar(context);
      case '/catalog':
        return _buildNavBar(context);
      case '/wishlist':
        return _buildNavBar(context);
      case '/product':
        return _buildAddToCartNavBar(context, product);

      default:
        _buildNavBar(context);
    }
  }

  List<Widget> _buildNavBar(context) {
    return [
      IconButton(
        icon: Icon(Icons.home, color: Colors.white),
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      IconButton(
        icon: Icon(Icons.shopping_cart, color: Colors.white),
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
      ),
      IconButton(
        icon: Icon(Icons.person, color: Colors.white),
        onPressed: () {
          Navigator.pushNamed(context, '/user');
        },
      )
    ];
  }

  List<Widget> _buildAddToCartNavBar(context, product) {
    return [
      IconButton(
        icon: Icon(Icons.share, color: Colors.white),
        onPressed: () {},
      ),
      BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return CircularProgressIndicator();
          }
          if (state is WishlistLoaded) {
            return IconButton(
              icon: Icon(Icons.favorite, color: Colors.white),
              onPressed: () {
                final snackBar =
                    SnackBar(content: Text('Added to your Wishlist!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                context.read<WishlistBloc>().add(AddProductToWishlist(product));
              },
            );
          }
          return Text('Something went wrong!');
        },
      )
    ];
  }
}
