import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const activeBlueColor = Color.fromRGBO(61, 153, 238, 1.0);
const inactiveGreyColor = Color.fromARGB(255, 143, 143, 143);

const searchBarColor = Color.fromRGBO(241, 250, 255, 1.0);
const pink = Color.fromRGBO(218, 65, 103, 1.0);

const grey = Color.fromRGBO(184, 184, 184, 1.0);
const greyLight = Color.fromRGBO(236, 236, 236, 1.0);
const greyMedium = Color.fromRGBO(94, 94, 94, 1.0);
const greyDark = Color.fromRGBO(61, 61, 61, 1.0);

TextStyle ratingInWhite = GoogleFonts.lato(
  fontWeight: FontWeight.w600,
  fontSize: 15,
  color: Colors.white,
);

TextStyle greyText = GoogleFonts.lato(
  fontSize: 12,
  fontWeight: FontWeight.normal,
  color: Colors.grey,
);

TextStyle hotePreviewGreyText = GoogleFonts.lato(
  fontSize: 12,
  fontWeight: FontWeight.normal,
  color: greyMedium,
);

TextStyle hotelPreviewGreyTextMedium = GoogleFonts.lato(
  fontSize: 12,
  fontWeight: FontWeight.normal,
  color: greyDark,
);

TextStyle HotelPreviewGreyText = GoogleFonts.lato(
  fontSize: 15,
  fontWeight: FontWeight.normal,
  color: greyMedium,
);

TextStyle blackBoldText = GoogleFonts.lato(
  fontWeight: FontWeight.w800,
  fontSize: 25,
  color: Colors.black,
);

TextStyle blackBoldTextMedium = GoogleFonts.lato(
  fontWeight: FontWeight.w800,
  fontSize: 15,
  color: Colors.black,
);

TextStyle pinkBoldText = GoogleFonts.lato(
  fontWeight: FontWeight.w800,
  fontSize: 25,
  color: pink,
);

TextStyle smallBoldText = GoogleFonts.lato(
  fontWeight: FontWeight.w800,
  fontSize: 15,
  color: activeBlueColor,
);

TextStyle smallBoldTextProgresBar = GoogleFonts.lato(
  fontWeight: FontWeight.w800,
  fontSize: 15,
);

TextStyle blackNormalText = GoogleFonts.lato(
  fontSize: 12,
  fontWeight: FontWeight.normal,
  color: Colors.black87,
);
TextStyle hotelPreviewBlackNormalText = GoogleFonts.lato(
  fontSize: 10,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);
TextStyle listTitle = GoogleFonts.lato(
  fontWeight: FontWeight.w900,
  color: Colors.black,
  fontSize: 20,
);

TextStyle hotelName = GoogleFonts.lato(
  fontWeight: FontWeight.w800,
  fontSize: 18,
);

TextStyle cityNameText = GoogleFonts.lato(
  fontWeight: FontWeight.bold,
  color: const Color.fromRGBO(55, 55, 55, 1.0),
);

TextStyle searchBarHint = GoogleFonts.lato(
  color: activeBlueColor,
  fontWeight: FontWeight.w600,
  fontSize: 15,
);

TextStyle clickableEditButton = GoogleFonts.lato(
  color: activeBlueColor,
  fontWeight: FontWeight.w600,
  fontSize: 15,
);
TextStyle blueTextMedium = GoogleFonts.lato(
  color: activeBlueColor,
  fontWeight: FontWeight.w600,
  fontSize: 20,
);

BoxDecoration gradientButton = const BoxDecoration(
  gradient: LinearGradient(
    colors: <Color>[
      Color.fromRGBO(61, 153, 238, 100),
      Color.fromRGBO(154, 207, 255, 100),
    ],
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
);

TextStyle bookingCardBlueText = GoogleFonts.lato(
  color: activeBlueColor,
  fontWeight: FontWeight.normal,
  fontSize: 10,
);

TextStyle hotelPreviewBlueText = GoogleFonts.lato(
  color: activeBlueColor,
  fontWeight: FontWeight.normal,
  fontSize: 10,
);

TextStyle offerCardTitle = GoogleFonts.lato(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontSize: 15,
);

TextStyle kindsOfStayTitleText = GoogleFonts.lato(
  fontWeight: FontWeight.w800,
  fontSize: 15,
  color: Colors.black,
);
TextStyle quotes = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w800,
  color: activeBlueColor,
);
