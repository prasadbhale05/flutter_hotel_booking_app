import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookHistory extends StatefulWidget {
  const BookHistory({super.key});

  @override
  State<BookHistory> createState() => _BookHistoryState();
}

class _BookHistoryState extends State<BookHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Booking History",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 800,
              color: const Color.fromRGBO(255, 255, 255, 1),
              child: Stack(
                children: [
                  const Positioned(
                    left: 20,
                    top: 10,
                    child: Text(
                      "12 August 2022",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  Card(
                    elevation: 0.8,
                    margin: const EdgeInsets.fromLTRB(20, 40, 20, 410),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 120),
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage("assets/res/hotel_img.png"),
                                alignment: Alignment.topCenter,
                                scale: 1.0,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 20,
                          top: 220,
                          child: Text(
                            "Clarks Inn Suits",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                        const Positioned(
                          left: 20,
                          top: 245,
                          child: Text(
                            "New Prem Nagar",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ),
                        const Positioned(
                          left: 20,
                          top: 280,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ),
                        Positioned(
                          left: 250,
                          top: 223,
                          child: RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, color: Colors.amber),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        const Positioned(
                          left: 306,
                          top: 245,
                          child: Text(
                            "\u{20B9}4,433",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        const Positioned(
                          left: 290,
                          top: 265,
                          child: Text(
                            "\u{20B9}3,493",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        const Positioned(
                          left: 255,
                          top: 290,
                          child: Text(
                            "+\u{20B9}594 taxes and fee",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Positioned(
                          left: 305,
                          top: 305,
                          child: Text(
                            "Per night",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(146, 146, 146, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 320,
                          top: 18,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(218, 65, 103, 1),
                              ),
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: const Icon(
                              Icons.favorite_border,
                              color: Color.fromRGBO(218, 65, 103, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 313.9,
                          top: 192.9,
                          child: Container(
                            alignment: Alignment.center,
                            color: Color.fromRGBO(218, 65, 103, 1),
                            height: 18,
                            width: 45,
                            child: const Text(
                              "4.3/5",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
