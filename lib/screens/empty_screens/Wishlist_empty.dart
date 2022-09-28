import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishlistEmpty extends StatefulWidget {
  const WishlistEmpty({super.key});

  @override
  State<WishlistEmpty> createState() => _WishlistEmptyState();
}

class _WishlistEmptyState extends State<WishlistEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 40.0,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/res/Travel.png',
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 15,
              children: const [
                Text(
                  "Nothing Saved Yet",
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                Text(
                  "While exploring tap on heart icon \nto wishlist your favorite hotel",
                  style: TextStyle(
                    color: Color.fromRGBO(139, 139, 139, 100),
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Wrap(
                children: [
                  TextButton(
                    onPressed: () {},
                    // padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(61, 153, 238, 100),
                              Color.fromRGBO(154, 207, 255, 100),
                            ],
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(80.0))),
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: const Text(
                        'START EXPLORING',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 100),
                        border: Border.all(
                          color: const Color.fromRGBO(166, 166, 166, 80),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(80),
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: const Text(
                        "CREATE NEW",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.center,
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
