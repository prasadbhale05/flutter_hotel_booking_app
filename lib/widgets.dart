import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/elements/increment.dart';
import 'package:hotel_booking_app/screens/Bookings/ReviewBooking.dart';
import 'package:hotel_booking_app/screens/Home/HotelPreview.dart';
import 'package:hotel_booking_app/screens/empty_screens/location.dart';
import 'package:hotel_booking_app/styles.dart';

Widget listHeadingWidget(String title, bool showViewButton) {
  return ListTile(
    leading: Text(
      title,
      style: listTitle,
    ),
    trailing: Visibility(
      visible: showViewButton,
      child: TextButton(
        onPressed: () {},
        child: const Text("View all"),
      ),
    ),
  );
}

Widget smallCardUtility(
  Icon icon,
  String title,
  String subtitle,
) {
  return Expanded(
    child: Card(
      color: greyLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(),
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            icon,
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: hotelPreviewBlackNormalText,
                  ),
                  Text(
                    subtitle,
                    style: hotelPreviewBlueText,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget confirmBookingCard(
  String assetImage,
  String type,
  String name,
  String description,
  int rating,
) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  assetImage,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  textAlign: TextAlign.start,
                  style: bookingCardBlueText,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: hotelName,
                      ),
                      Text(
                        description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: greyText,
                      ),
                    ],
                  ),
                ),
                RatingBar.builder(
                  initialRating: 3,
                  itemCount: 5,
                  itemSize: 15,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber[900],
                  ),
                  onRatingUpdate: (onRatingUpdate) {
                    print(onRatingUpdate);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget popularSearchesTag(String tag) {
  return InkWell(
    onTap: () {
      // print(tag);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: grey,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          tag,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: grey,
          ),
        ),
      ),
    ),
  );
}

Widget quotesContainer(BuildContext context, String quote) {
  return Container(
    color: searchBarColor,
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
    child: Text(
      quote,
      textAlign: TextAlign.center,
      style: quotes,
    ),
  );
}

Widget smallKindsOfStayCard(
  String assetImage,
  String name,
) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          width: 135,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(
                assetImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          name,
          textAlign: TextAlign.start,
          style: kindsOfStayTitleText,
        ),
      ],
    ),
  );
}

Widget smallOfferCard(BuildContext context) {
  return Container(
    height: 120,
    width: MediaQuery.of(context).size.width * 0.7,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/res/offers.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '10% Instant savings',
                        style: offerCardTitle,
                      ),
                      Container(
                        height: 2,
                        width: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(255, 75, 38, 1.0),
                        ),
                      ),
                      Container(
                        width: 190,
                        child: Text(
                          'Save more than 10% on booking with Easyatra.',
                          softWrap: true,
                          maxLines: 2,
                          style: GoogleFonts.lato(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 5, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'T&C Apply',
                    style: GoogleFonts.lato(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View Details",
                      style: GoogleFonts.lato(
                        color: activeBlueColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget itemCard(
  BuildContext context,
  int bPrice,
  int aPrice,
  double rating,
  String imageAsset,
  String name,
  String area,
  String description,
) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    child: Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HotelPreviewPage(
                                      bPrice: bPrice,
                                      aPrice: aPrice,
                                      rating: rating,
                                      imageAsset: imageAsset,
                                      name: name,
                                      area: area,
                                      description: description)));
                        },
                        child: Image.asset(
                          imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                        decoration: BoxDecoration(
                          color: pink,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "$rating/5",
                          style: ratingInWhite,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite_border_rounded,
                      color: pink,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(
                        side: BorderSide(color: pink),
                      ),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(10),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: hotelName,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber[900],
                    ),
                    onRatingUpdate: (onRatingUpdate) {
                      print(onRatingUpdate);
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        area,
                        style: greyText,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          description,
                          style: blackNormalText,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '₹ $bPrice',
                        style: GoogleFonts.lato(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '₹ $aPrice',
                        style: blackBoldText,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "+ ₹ 594 taxes and fee",
                        style: blackNormalText,
                      ),
                      Text(
                        "Per Night",
                        style: greyText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget circleCitites(String imageAsset, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage(
                imageAsset,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          title,
          style: cityNameText,
        ),
      ],
    ),
  );
}

Widget listedDots() {
  return Container(
    height: 5,
    width: 5,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
        color: Colors.black,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );
}

Widget blueListedDots() {
  return Container(
    height: 5,
    width: 5,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(61, 153, 238, 1),
      border: Border.all(
        color: const Color.fromRGBO(61, 153, 238, 1),
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );
}

Widget layoutContainer() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
    child: Container(
      height: 100,
      width: 350,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(217, 230, 241, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 10,
            child: blueListedDots(),
          ),
          const Positioned(
            left: 20,
            top: 6,
            child: Text(
              "Room Only",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
            ),
          ),
          Positioned(
            left: 30,
            top: 35,
            child: listedDots(),
          ),
          const Positioned(
            left: 42,
            top: 30,
            child: Text(
              "No meals included.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            left: 30,
            top: 50,
            child: listedDots(),
          ),
          const Positioned(
            left: 42,
            top: 45,
            child: Text(
              "Non-refundable",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            left: 30,
            top: 65,
            child: listedDots(),
          ),
          const Positioned(
            left: 42,
            top: 60,
            child: Text(
              "City View",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          const Positioned(
            left: 250,
            top: 10,
            child: Text(
              "\u{20B9}1,493",
              style: TextStyle(
                color: Color.fromRGBO(218, 65, 103, 1),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Positioned(
            left: 285,
            top: 40,
            child: Text(
              "\u{20B9}4,433",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
          const Positioned(
            left: 245,
            top: 60,
            child: Text(
              "+ \u{20B9} 594 taxes and fee",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(94, 94, 94, 1),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget layoutContainer2() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
    child: Container(
      height: 100,
      width: 350,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(217, 230, 241, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 10,
            child: blueListedDots(),
          ),
          const Positioned(
            left: 20,
            top: 6,
            child: Text(
              "Room with breakfast",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
            ),
          ),
          Positioned(
            left: 30,
            top: 35,
            child: listedDots(),
          ),
          const Positioned(
            left: 42,
            top: 30,
            child: Text(
              "No meals included.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            left: 30,
            top: 50,
            child: listedDots(),
          ),
          const Positioned(
            left: 42,
            top: 45,
            child: Text(
              "Non-refundable",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            left: 30,
            top: 65,
            child: listedDots(),
          ),
          const Positioned(
            left: 42,
            top: 60,
            child: Text(
              "City View",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget customNavigationBar(BuildContext context) {
  return SafeArea(
    child: SizedBox(
      height: 90,
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(61, 153, 238, 100),
              Color.fromRGBO(154, 207, 255, 100),
            ],
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              left: 10,
              top: 20,
              child: Text(
                "\u{20B9}1,493",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Positioned(
              left: 80,
              top: 30,
              child: Text(
                "+ \u{20B9} 594 taxes and fee",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
              left: 260,
              top: 10,
              child: Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ReviewBooking())));
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget incrementButton(BuildContext context) {
  return Container(
    width: 60,
    padding: const EdgeInsets.all(3),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
    ),
    child: Row(
      children: [
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.remove,
            color: Color.fromRGBO(94, 94, 94, 1),
            size: 16,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3), color: Colors.white),
          child: const Text(
            '3',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.add,
            color: Color.fromRGBO(94, 94, 94, 1),
            size: 16,
          ),
        ),
      ],
    ),
  );
}

Widget cardSmall() {
  return Container(
    decoration: const BoxDecoration(),
    padding: const EdgeInsets.fromLTRB(5, 5, 5, 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          width: 300,
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/res/style.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Luxe Double Room',
                    style: offerCardTitle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            listedDots(),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text('Room Only'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            listedDots(),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text('Non-Refundable'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            listedDots(),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text('Breakfast'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '₹ 4,433',
                    style: GoogleFonts.lato(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '₹ 3,493',
                    style: smallBoldText,
                  ),
                  Text(
                    '+ ₹ 594 taxes and fee',
                    style: greyText,
                  ),
                  Text(
                    'Per night',
                    style: greyText,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget roomsCard(BuildContext context) {
  return Card(
    margin: const EdgeInsets.fromLTRB(10, 120, 10, 200),
    elevation: 1,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Stack(
      children: [
        const Positioned(
          left: 10,
          top: 10,
          child: Text(
            "Select rooms and guests",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        const Divider(
          height: 90,
        ),
        const Positioned(
          left: 10,
          top: 60,
          child: Text(
            "Rooms",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        const Positioned(
          left: 320,
          top: 55,
          child: Increment(count: 1),
        ),
        const Divider(
          height: 190,
        ),
        const Positioned(
          left: 10,
          top: 114,
          child: Text(
            "Adults",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        const Positioned(
          left: 320,
          top: 105,
          child: Increment(count: 1),
        ),
        const Divider(
          height: 300,
        ),
        const Positioned(
          left: 10,
          top: 164,
          child: Text(
            "Children",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        const Positioned(
          left: 320,
          top: 155,
          child: Increment(count: 1),
        ),
        Positioned(
          left: 20,
          top: 200,
          child: TextButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: gradientButton,
              child: const Text(
                "Apply",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget myBookingsCard(BuildContext context) {
  return Card(
    elevation: 1.3,
    margin: const EdgeInsets.fromLTRB(20, 20, 20, 560),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Stack(
      children: [
        const Positioned(
          left: 30,
          right: 30,
          top: 30,
          child: Text(
            "AUG",
            style: TextStyle(
                color: Color.fromRGBO(61, 153, 238, 1),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        const Positioned(
          left: 38,
          top: 55,
          child: Text(
            "23",
            style: TextStyle(
                color: Color.fromRGBO(61, 153, 238, 1),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        const Positioned(
          left: 25,
          top: 80,
          child: Text(
            "Monday",
            style: TextStyle(
                color: Color.fromRGBO(61, 153, 238, 1),
                fontSize: 14,
                fontWeight: FontWeight.w700),
          ),
        ),
        const Positioned(
          left: 100,
          child: DottedLine(
            direction: Axis.vertical,
            lineLength: 115,
            lineThickness: 1,
          ),
        ),
        const Divider(
          height: 250,
          thickness: 1,
          color: Color.fromRGBO(94, 94, 94, 1),
        ),
        Positioned(
          left: 10,
          top: 130,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 165,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromRGBO(61, 153, 238, 100),
                    Color.fromRGBO(154, 207, 255, 100),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(20, 13, 20, 10),
              child: const Text(
                'CANCEL BOOKING',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Positioned(
          left: 185,
          top: 130,
          child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => LocationScreen())));
            },
            child: Container(
              width: 165,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromRGBO(61, 153, 238, 100),
                    Color.fromRGBO(154, 207, 255, 100),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(20, 13, 20, 10),
              child: const Text(
                'HOTEL LOCATION',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        const Positioned(
          left: 130,
          top: 20,
          child: Text(
            "2 Nights - 2 Guests",
            style: TextStyle(
              color: Color.fromRGBO(218, 65, 103, 1),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
        const Positioned(
          left: 130,
          top: 40,
          child: Text(
            "At Clark Inn Suits",
            style: TextStyle(
              color: Color.fromRGBO(61, 61, 61, 1),
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
        const Positioned(
          left: 130,
          top: 70,
          child: Text(
            "Booking ID",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.w700,
              fontSize: 10,
            ),
          ),
        ),
        const Positioned(
          left: 130,
          top: 85,
          child: Text(
            "8237920",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
        const Positioned(
          left: 235,
          top: 70,
          child: Text(
            "Date of checkout",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.w700,
              fontSize: 10,
            ),
          ),
        ),
        const Positioned(
          left: 235,
          top: 85,
          child: Text(
            "26 Aug 2022",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
  );
}
