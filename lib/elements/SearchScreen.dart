import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/elements/SearchScreenResult.dart';
import 'package:hotel_booking_app/styles.dart';
import 'package:hotel_booking_app/widgets.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(154, 207, 255, 1.0),
                  Color.fromRGBO(61, 153, 238, 1.0),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 60, 25, 0),
                child: TextField(
                  onSubmitted: (value) {
                    String query = value;
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SearchScreenResult(
                        searchQuery: query,
                      ),
                    ));
                  },
                  cursorColor: activeBlueColor,
                  style: searchBarHint,
                  decoration: InputDecoration(
                    fillColor: searchBarColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Search hotel, location etc.',
                    hintStyle: searchBarHint,
                    suffixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Icon(
                        Icons.search,
                        color: activeBlueColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Popular Locations',
                  textAlign: TextAlign.start,
                  style: hotelName,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                popularSearchesTag("Mumbai"),
                popularSearchesTag("Lonavala"),
                popularSearchesTag("Andheri West"),
                popularSearchesTag("Taj Palace"),
                popularSearchesTag("Dadar"),
                popularSearchesTag("Nagar"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
