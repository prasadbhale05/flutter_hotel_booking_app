import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotel_booking_app/initial_screen.dart';
import 'package:hotel_booking_app/widgets.dart';

int home = 0;

class BookHistory extends StatefulWidget {
  const BookHistory({super.key});

  @override
  State<BookHistory> createState() => _BookHistoryState();
}

class _BookHistoryState extends State<BookHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            if (!Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              // Navigator.pop(context);
              ;
            }
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Booking History",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Builder(builder: (context) {
        return Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 800,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "12 August 2022",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
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
                    ))
              ],
            ),
          ),
        );
      }),
    );
  }
}
