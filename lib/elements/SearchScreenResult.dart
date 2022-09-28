import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/styles.dart';
import 'package:hotel_booking_app/widgets.dart';

class SearchScreenResult extends StatefulWidget {
  final String searchQuery;
  SearchScreenResult({Key? key, required this.searchQuery}) : super(key: key);

  @override
  State<SearchScreenResult> createState() => _SearchScreenResultState();
}

class _SearchScreenResultState extends State<SearchScreenResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
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
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              height: MediaQuery.of(context).size.width * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 50,
                          decoration: BoxDecoration(
                            color: greyLight,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  backgroundColor: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 100,
                                child: Text(
                                  widget.searchQuery,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.search,
                              size: 28,
                              color: activeBlueColor,
                            ),
                          ),
                          Text(
                            'search',
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              color: activeBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Aug 23-Aug 24',
                              style: GoogleFonts.lato(
                                color: activeBlueColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Aug 23-Aug 24',
                              style: GoogleFonts.lato(
                                color: activeBlueColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.filter_alt_rounded,
                                    size: 30,
                                    color: activeBlueColor,
                                  ),
                                  Text(
                                    'Filters',
                                    style: GoogleFonts.lato(
                                      fontSize: 15,
                                      color: activeBlueColor,
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Popular',
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Price',
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
