import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/elements/SearchScreen.dart';
import 'package:hotel_booking_app/styles.dart';

class SearchInput extends StatefulWidget {
  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 10, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  focusColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchScreen()));
                  },
                  // child: TextField(
                  //   cursorColor: Colors.grey,
                  //   decoration: InputDecoration(
                  //     fillColor: searchBarColor,
                  //     filled: true,
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //         borderSide: BorderSide.none),
                  //     hintText: 'Search hotel, location etc.',
                  //     hintStyle: searchBarHint,
                  //     suffixIcon: Container(
                  //       padding: EdgeInsets.all(15),
                  //       child: Icon(
                  //         Icons.search,
                  //         color: activeBlueColor,
                  //       ),
                  //       width: 18,
                  //     ),
                  //   ),
                  // ),

                  child: Container(
                    decoration: BoxDecoration(
                      color: searchBarColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Search Hotel, loction etc.',
                            style: searchBarHint,
                          ),
                          Icon(
                            Icons.search,
                            color: activeBlueColor,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
