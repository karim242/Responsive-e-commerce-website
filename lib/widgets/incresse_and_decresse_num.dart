import 'package:flutter/material.dart';

class AddNumder extends StatefulWidget {
  const AddNumder({super.key});

  @override
  State<AddNumder> createState() => _AddNumderState();
}

class _AddNumderState extends State<AddNumder> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(24)),
      child: Row(
        children: [
         CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xffffffff),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                icon: const Icon(Icons.add)),
          ),
          Text(number.toString()),
          CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xffffffff),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      number--;
                    });
                  },
                  icon: const Icon(Icons.remove))),
        ],
      ),
    );
  }
}
