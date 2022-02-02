import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smritiecommercetest/bloc/blocs/wishlist_bloc.dart';
import 'package:smritiecommercetest/data/model/product_model.dart';

import 'package:smritiecommercetest/json/constants.dart';
import 'package:smritiecommercetest/theme/colors.dart';
import 'package:smritiecommercetest/widgets/custom_navbar.dart';

class FeedsScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => FeedsScreen(product: product),
    );
  }

  final Product product;

  const FeedsScreen({
    required this.product,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: CustomNavBar(screen: routeName, product: product),
      body: getBody(context,product),
    );
  }
}

Widget getBody(context, product) {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      Stack(
        children: [
          Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                homeImg,
              ),
              fit: BoxFit.cover,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Winter Collection',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black54,
                          size: 50,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ALL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(categories.length, (int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 180,
                height: 220,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  categories[index]['imgUrl'] as String),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(categories[index]['title'] as String,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
      SizedBox(
        height: 40,
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Kys Recommendations',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ALL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: BlocBuilder<WishlistBloc, WishlistState>(
          builder: (context, state) {
            if (state is WishlistLoading) {
              return CircularProgressIndicator();
            }
            if (state is WishlistLoaded) {
              return InkWell(
                onTap: () {
                    final snackBar =
                    SnackBar(content: Text('Added to your Wishlist!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                context.read<WishlistBloc>().add(AddProductToWishlist(product));
                },
                child: Row(
                    children: List.generate(Product.products.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 140,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      Product.products[0].imageUrl),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Product.products[0].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: black,
                                    height: 1.5),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              // Text(
                              //   // recommends[index]['price'] as String,
                              //   // style: TextStyle(
                              //   //     fontWeight: FontWeight.bold,
                              //   //     color: grey,
                              //   //     height: 1.5),
                              // ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })),
              );
              
            }
               return Text('Something went wrong!');
          },
        ),
      ),
      SizedBox(
        height: 40,
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Explore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ALL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 30),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(exploreProduct.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage(
                              exploreProduct[index]['imgUrl'] as String),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exploreProduct[index]['title'] as String,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: black,
                            height: 1.5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          recommends[index]['price'] as String,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: grey,
                              height: 1.5),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        })),
      ),
    ],
  );
}
