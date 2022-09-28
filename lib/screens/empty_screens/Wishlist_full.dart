import 'package:flutter/material.dart';
import 'package:hotel_booking_app/styles.dart';
import 'package:hotel_booking_app/widgets.dart';

class WishlistFull extends StatefulWidget {
  const WishlistFull({super.key});

  @override
  State<WishlistFull> createState() => _WishlistFullState();
}

class _WishlistFullState extends State<WishlistFull> {
  late ScrollController _controller;
  double _scrollControllerOffset = 0.0;
  bool positionAtInitialState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(children: [
          Container(
            height: 290,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/res/wishlist.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  expandedHeight: 150,
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(5),
                      ),
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  actionsIconTheme: const IconThemeData(
                    size: 20,
                  ),
                  flexibleSpace: Stack(
                    fit: StackFit.expand,
                    children: [],
                  ),
                ),
              ];
            },
            body: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: SingleChildScrollView(
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "My Wishlist",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      left: 15,
                      top: 55,
                      child: Text(
                        "1 Item",
                        style: TextStyle(
                          color: Color.fromRGBO(94, 94, 94, 1),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 80, left: 10),
                      child: Text(
                        "Last updated on 23 Aug`22",
                        style: TextStyle(
                            color: Color.fromRGBO(61, 153, 238, 1),
                            fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 250),
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.height * 0.15,
                          child: Text(
                            "Share Wishlist",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color.fromRGBO(61, 153, 238, 100),
                                Color.fromRGBO(154, 207, 255, 100),
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      height: 240,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 130),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, top: 135),
                      child: Text(
                        "Mumbai",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 165, right: 30),
                      child: itemCard(
                        context,
                        4433,
                        3493,
                        4.7,
                        'assets/res/hotel_img.jpg',
                        "Hotel Sunshine Inn",
                        'Near Prem Nagar',
                        'Loreium Ipsumsjdbvvv sd sbv fvbmfvmfsdfweneufmgo',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
