import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/elements/search_input.dart';
import 'package:hotel_booking_app/screens/Bookings/MyBookings.dart';
import 'package:hotel_booking_app/screens/empty_screens/Wishlist_empty.dart';
import 'package:hotel_booking_app/styles.dart';
import 'package:hotel_booking_app/widgets.dart';

class homeScreenPage extends StatefulWidget {
  homeScreenPage({Key? key}) : super(key: key);

  @override
  State<homeScreenPage> createState() => _homeScreenPageState();
}

class _homeScreenPageState extends State<homeScreenPage> {
  late ScrollController _controller;

  double _scrollControllerOffset = 0.0;
  bool positionAtInitialState = true;

  _scrollListener() {
    setState(() {
      _scrollControllerOffset = _controller.offset;

      if (_scrollControllerOffset != 0) {
        positionAtInitialState = false;
      } else {
        positionAtInitialState = true;
      }
    });
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  String dropDownStringValue = 'Lonavala';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
        child: Scaffold(
          drawer: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
              ),
            ),
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person_rounded,
                          color: Colors.black,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi Soumya",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "soumya123@gmail.com",
                              style: greyText,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: InkWell(
                                onTap: () {
                                  // Apply edit workflow here
                                },
                                child: Text(
                                  "Edit",
                                  style: clickableEditButton,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Wishlist'),
                  leading: const Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const WishlistEmpty())));
                  },
                ),
                ListTile(
                  title: const Text('My Bookings'),
                  leading: const Icon(
                    Icons.work_outline_rounded,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyBookings()));
                  },
                ),
                ListTile(
                  title: const Text('My Rewards'),
                  leading: const Icon(
                    Icons.card_giftcard_rounded,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Notifications'),
                  leading: const Icon(
                    Icons.notifications_none_rounded,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Customer Support'),
                  leading: const Icon(
                    Icons.support_agent_rounded,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(238, 61, 61, 1.0)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Log out",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: NestedScrollView(
            controller: _controller,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  actions: [
                    Visibility(
                      visible: positionAtInitialState,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                              child: Icon(
                                Icons.place_rounded,
                                color: activeBlueColor,
                                size: 18,
                              ),
                            ),
                            DropdownButton<String>(
                              isDense: true,
                              borderRadius: BorderRadius.circular(15),
                              elevation: 0,
                              value: dropDownStringValue,
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: activeBlueColor,
                              ),
                              items: <String>[
                                'Lonavala',
                                'Mumbai',
                                'Pune',
                                'Nashik'
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: activeBlueColor,
                                size: 25,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  dropDownStringValue = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  leading: Visibility(
                    visible: positionAtInitialState,
                    child: IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.menu_rounded,
                          color: activeBlueColor,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  expandedHeight: 150,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    titlePadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    centerTitle: true,
                    title: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 0,
                        maxWidth: 250,
                      ),
                      child: Text(
                        "Find Deals on Hotels, Stays, Resorts and much more...",
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  floating: true,
                  snap: false,
                )
              ];
            },
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SearchInput(),
                  listHeadingWidget("Hotels near you !!", true),
                  SingleChildScrollView(
                    // controller: _controller,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        itemCard(
                          context,
                          4433,
                          3500,
                          4.7,
                          'assets/res/hotel_img.jpg',
                          "Hotel Sunshine Inn",
                          'Near Prem Nagar',
                          'Loreium Ipsumsjdbvvv sd sbv fvbmfvmfsdfweneufmgo',
                        ),
                        itemCard(
                          context,
                          4433,
                          3500,
                          4.7,
                          'assets/res/hotel_img.jpg',
                          "Hotel Sunshine Inn",
                          'Near Prem Nagar',
                          'Loreium Ipsumsjdbvvv sd sbv fvbmfvmfsdfweneufmgo',
                        ),
                        itemCard(
                          context,
                          4433,
                          3500,
                          4.7,
                          'assets/res/hotel_img.jpg',
                          "Hotel Sunshine Inn",
                          'Near Prem Nagar',
                          'Loreium Ipsumsjdbvvv sd sbv fvbmfvmfsdfweneufmgo',
                        ),
                      ],
                    ),
                  ),
                  listHeadingWidget("Explore by City", true),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        circleCitites('assets/res/city/mumbai.jpg', "Mumbai"),
                        circleCitites('assets/res/city/delhi.jpg', "Delhi"),
                        circleCitites('assets/res/city/goa.jpg', "Goa"),
                        circleCitites('assets/res/city/indore.jpg', "Indore"),
                        circleCitites('assets/res/city/pune.jpg', "Pune"),
                      ],
                    ),
                  ),
                  listHeadingWidget("Holiday Retreats !!", true),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        itemCard(
                          context,
                          4433,
                          3500,
                          4.7,
                          'assets/res/hotel_img.jpg',
                          "Hotel Sunshine Inn",
                          'Near Prem Nagar',
                          'Loreium Ipsumsjdbvvv sd sbv fvbmfvmfsdfweneufmgo',
                        ),
                        itemCard(
                          context,
                          4433,
                          3500,
                          4.7,
                          'assets/res/hotel_img.jpg',
                          "Hotel Sunshine Inn",
                          'Near Prem Nagar',
                          'Loreium Ipsumsjdbvvv sd sbv fvbmfvmfsdfweneufmgo',
                        ),
                        itemCard(
                          context,
                          4433,
                          3500,
                          4.7,
                          'assets/res/hotel_img.jpg',
                          "Hotel Sunshine Inn",
                          'Near Prem Nagar',
                          'Loreium Ipsumsjdbvvv sd sbv fvbmfvmfsdfweneufmgo',
                        ),
                      ],
                    ),
                  ),
                  listHeadingWidget('Kinds of stay you want', false),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          smallKindsOfStayCard(
                            'assets/res/kinds_of_stay/hotels.jpg',
                            'Hotels',
                          ),
                          smallKindsOfStayCard(
                              'assets/res/kinds_of_stay/hostels.jpg',
                              'Hostels'),
                          smallKindsOfStayCard(
                              'assets/res/kinds_of_stay/apartments.jpg',
                              'Apartments'),
                          smallKindsOfStayCard(
                            'assets/res/kinds_of_stay/cabins.jpg',
                            'Cabins',
                          ),
                          smallKindsOfStayCard(
                            'assets/res/kinds_of_stay/villas.jpg',
                            'Villas',
                          ),
                          smallKindsOfStayCard(
                            'assets/res/kinds_of_stay/resorts.jpg',
                            'Resort',
                          ),
                        ],
                      ),
                    ),
                  ),
                  listHeadingWidget('Offers for you', false),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          smallOfferCard(context),
                          smallOfferCard(context),
                          smallOfferCard(context),
                          smallOfferCard(context),
                        ],
                      ),
                    ),
                  ),
                  quotesContainer(context,
                      '“A good traveler has no fixed plans, and is not intent on arriving.” – Lao Tzu'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
