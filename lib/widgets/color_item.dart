import 'package:flutter/material.dart';

class ColorListItem extends StatefulWidget {
  const ColorListItem({super.key});

  @override
  State<ColorListItem> createState() => _ColorListItemState();
}

class _ColorListItemState extends State<ColorListItem> {
  final List<Color> colorItems = const [
    Color(0xFF67B2EB),
    Color(0xff00AD97),
    Color(0xffE27373),
    Color(0xff75E573),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(4, (index) {
        return Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: ColorItem(
                color: colorItems[index],
                isActive: selectedIndex == index,
              ),
            ));
      }),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isActive});
  final Color? color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 7,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 6,
            backgroundColor: color,
          );
  }
}
