import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_booking_app/widgets.dart';

class PropertyType extends StatefulWidget {
  const PropertyType({super.key});

  @override
  State<PropertyType> createState() => _PropertyTypeState();
}

class _PropertyTypeState extends State<PropertyType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Select Room",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sep 8 - Sep 9",
                    style: TextStyle(
                        color: Color.fromRGBO(61, 153, 238, 1), fontSize: 12),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  blueListedDots(),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "1 room",
                    style: TextStyle(
                        color: Color.fromRGBO(61, 153, 238, 1), fontSize: 12),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  blueListedDots(),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "2 Guests",
                    style: TextStyle(
                        color: Color.fromRGBO(61, 153, 238, 1), fontSize: 12),
                  )
                ],
              ),
            ],
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          color: Colors.grey,
          child: Stack(
            children: [
              const Positioned(
                left: 20,
                top: 10,
                child: Text(
                  "Club Room",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              const Divider(
                height: 85,
                thickness: 1,
              ),
              const Positioned(
                left: 20,
                top: 60,
                child: Image(
                  image: AssetImage("assets/res/club_room.png"),
                ),
              ),
              Positioned(
                left: 130,
                top: 70,
                child: listedDots(),
              ),
              const Positioned(
                left: 142,
                top: 65,
                child: Text(
                  "220 sq.ft",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                left: 130,
                top: 90,
                child: listedDots(),
              ),
              const Positioned(
                left: 142,
                top: 85,
                child: Text(
                  "City View",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                left: 130,
                top: 110,
                child: listedDots(),
              ),
              const Positioned(
                left: 142,
                top: 105,
                child: Text(
                  "Twin Bed",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                left: 10,
                top: 150,
                child: layoutContainer(),
              ),
              const Divider(
                height: 565,
                thickness: 1,
              ),
              const Positioned(
                left: 20,
                top: 300,
                child: Text(
                  "Executive Room",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              const Divider(
                height: 685,
                thickness: 1,
              ),
              const Positioned(
                left: 20,
                top: 360,
                child: Image(
                  image: AssetImage("assets/res/club_room.png"),
                ),
              ),
              Positioned(
                left: 130,
                top: 370,
                child: listedDots(),
              ),
              const Positioned(
                left: 142,
                top: 365,
                child: Text(
                  "220 sq.ft",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                left: 130,
                top: 390,
                child: listedDots(),
              ),
              const Positioned(
                left: 142,
                top: 385,
                child: Text(
                  "City View",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                left: 130,
                top: 410,
                child: listedDots(),
              ),
              const Positioned(
                left: 142,
                top: 405,
                child: Text(
                  "Twin Bed",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                left: 10,
                top: 450,
                child: layoutContainer(),
              ),
              Positioned(
                left: 10,
                top: 570,
                child: layoutContainer2(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: customNavigationBar(context),
    );
  }
}
