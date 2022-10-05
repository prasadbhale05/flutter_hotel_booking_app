import 'package:flutter/material.dart';
import 'package:hotel_booking_app/elements/increment.dart';
import 'package:hotel_booking_app/styles.dart';
import 'package:hotel_booking_app/widgets.dart';

class hostingPage extends StatefulWidget {
  hostingPage({Key? key}) : super(key: key);

  @override
  State<hostingPage> createState() => _hostingPageState();
}

class _hostingPageState extends State<hostingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Stack(
              children: [
                // roomsCard(),
                roomsCard(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
