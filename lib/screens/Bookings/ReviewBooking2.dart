import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotel_booking_app/styles.dart';

class ReviewBooking2 extends StatefulWidget {
  const ReviewBooking2({super.key});

  @override
  State<ReviewBooking2> createState() => _ReviewBooking2State();
}

class _ReviewBooking2State extends State<ReviewBooking2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Confirm Booking",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: const Color.fromRGBO(255, 255, 255, 100),
              child: Card(
                elevation: 1,
                margin: const EdgeInsets.all(20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // padding: EdgeInsets.all(11),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/res/hotel_img_one.png",
                            ),
                            alignment: Alignment.centerLeft,
                            scale: 0.9,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 150,
                      top: 26,
                      child: Text(
                        "Hotel",
                        style: TextStyle(
                            color: Color.fromRGBO(61, 153, 238, 100),
                            fontSize: 12),
                      ),
                    ),
                    const Positioned(
                      left: 150,
                      top: 50,
                      child: Text(
                        "Clarks Inn Suits",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Positioned(
                      left: 150,
                      top: 75,
                      child: Text(
                        "New Prem Nagar, Lorem Ipsum",
                        style: TextStyle(
                            color: Color.fromRGBO(64, 64, 64, 100),
                            fontSize: 12),
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 95,
                      child: SvgPicture.asset("assets/SVG/star.svg"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 500,
              color: const Color.fromRGBO(255, 255, 255, 100),
              child: Card(
                elevation: 1,
                margin: const EdgeInsets.fromLTRB(40, 20, 50, 20),
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
                        "Your Booking",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    const Positioned(
                      left: 10,
                      top: 45,
                      child: Text(
                        "Dates",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    const Positioned(
                      left: 10,
                      top: 70,
                      child: Text(
                        "19-21 Sept",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    const Positioned(
                      left: 10,
                      top: 98,
                      child: Text(
                        "Guests",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    const Positioned(
                      left: 10,
                      top: 122,
                      child: Text(
                        "1 Guest",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 32,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Edit"),
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 87,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Edit"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  height: 280,
                  width: 500,
                  color: const Color.fromRGBO(255, 255, 255, 100),
                  child: Card(
                    elevation: 1,
                    margin: const EdgeInsets.fromLTRB(35, 10, 35, 75),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 10,
                          top: 13,
                          child: Text(
                            "Price Details",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 40,
                          child: SvgPicture.asset("assets/SVG/price.svg"),
                        ),
                        const Positioned(
                          left: 10,
                          top: 150,
                          child: Text(
                            "Total(INR)",
                            style: TextStyle(
                              color: Color.fromRGBO(61, 153, 238, 100),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 250,
                          top: 150,
                          child: Text(
                            "\u{20B9}13,000",
                            style: TextStyle(
                              color: Color.fromRGBO(61, 153, 238, 100),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 40,
                  top: 220,
                  child: Text(
                    "Cancellation Policy",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  left: 40,
                  top: 240,
                  child: Text(
                    "Non-refundable(\u{20B9}13,000.76)",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  left: 200,
                  top: 240,
                  child: Text(
                    "This reservation is non-refundable",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 500,
              color: const Color.fromRGBO(255, 255, 255, 100),
              child: Stack(
                children: [
                  const Positioned(
                    left: 20,
                    top: 20,
                    child: Text(
                      "By selecting continue, I agree to hotel booking's",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Positioned(
                    left: 269,
                    top: 4,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Terms of service",
                        style: TextStyle(
                          color: Color.fromRGBO(61, 153, 238, 100),
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    top: 38,
                    child: Text(
                      "and",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(61, 153, 238, 100),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 38,
                    top: 20,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Privacy Policy",
                        style: TextStyle(
                          color: Color.fromRGBO(61, 153, 238, 100),
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    left: 20,
                    top: 60,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ReviewBooking2())));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: gradientButton,
                        padding: const EdgeInsets.fromLTRB(30, 13, 30, 10),
                        child: const Text(
                          'Continue',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
