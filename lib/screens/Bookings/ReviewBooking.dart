// import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/screens/Bookings/MyBookings.dart';
import 'package:hotel_booking_app/styles.dart';
import 'package:intl/intl.dart';

class ReviewBooking extends StatefulWidget {
  const ReviewBooking({super.key});

  @override
  State<ReviewBooking> createState() => _ReviewBookingState();
}

late String? birthDateInString;

late DateTime birthDate;
bool isDateSelected = false;
TextEditingController dateController = TextEditingController();

class _ReviewBookingState extends State<ReviewBooking> {
  bool? value = false;

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
        child: Wrap(
          // runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          runSpacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "Your Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              width: 390,
              child: const TextField(
                autofocus: false,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Phone number \n923285373",
                  hintMaxLines: 2,
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(194, 194, 194, 100),
                    fontSize: 12,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(209, 209, 209, 100),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Log in",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 390,
              child: const TextField(
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(194, 194, 194, 100),
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(209, 209, 209, 100),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    "we'll email you booking confirmation and reciepts",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 88, 88, 100),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 390,
              child: const TextField(
                autofocus: false,
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: "First name",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(194, 194, 194, 100),
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(209, 209, 209, 100),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 390,
              child: const TextField(
                autofocus: false,
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Last name",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(194, 194, 194, 100),
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(209, 209, 209, 100),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    "Use the name on your government ID",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 88, 88, 100),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 390,
              child: TextField(
                controller: dateController,
                autofocus: false,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () async {
                      final datePick = await showDatePicker(
                          context: context,
                          initialDate: new DateTime.now(),
                          firstDate: new DateTime(1900),
                          lastDate: new DateTime(2100));
                      if (datePick != null && datePick != birthDate) {
                        birthDate = datePick;
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(datePick);
                        print(formattedDate);
                        isDateSelected = true;
                        birthDateInString =
                            "${birthDate.month}/${birthDate.day}/${birthDate.year}";
                        setState(() {
                          dateController.text = formattedDate;
                        }); // 08/14/2019
                      }
                    },
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                  hintText: "Date of birth",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(194, 194, 194, 100),
                    fontSize: 18,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(209, 209, 209, 100),
                    ),
                  ),
                ),
              ),
            ),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Text(
                        "To sign up you need to be atleast 18 year old",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 88, 88, 100),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Text(
                        "we'll send you marketing emails, including deals and trip ideas.Opt \nout now or anytime from our emails or your account's notification \nsettings.",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 88, 88, 100),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Checkbox(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromRGBO(94, 94, 94, 100),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          ),
                        ),
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value;
                          });
                        },
                      ),
                      const Text(
                        "I don't want to recieve marketing emails",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 88, 88, 100),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    children: const [
                      Text(
                        "By selecting continue, I agree to hotel booking's",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 100),
                          fontSize: 14,
                        ),
                      ),
                      //
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Terms of service",
                          style: TextStyle(
                            color: Color.fromRGBO(61, 153, 238, 100),
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Text(
                        "and",
                        style: TextStyle(
                          color: Color.fromRGBO(61, 153, 238, 100),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Privacy policy",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(61, 153, 238, 100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyBookings()));
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
          ],
        ),
      ),
    );
  }
}
