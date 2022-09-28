import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Increment extends StatefulWidget {
  final int count;
  const Increment({super.key, required this.count});

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int count1 = 1;
  @override
  void initState() {
    count1 = widget.count;
  }

  @override
  Widget build(BuildContext context) {
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
            onTap: () {
              setState(() {
                count1 = count1 - 1;
              });
            },
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
            child: Text(
              count1.toString(),
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                count1 = count1 + 1;
              });
            },
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
}
