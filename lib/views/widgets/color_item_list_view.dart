import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    ): CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorItemListView extends StatefulWidget {
  const ColorItemListView({super.key});

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {

  int currentIndex = 0;

  List<Color> kColors = const [
  Color(0xffAC3931),
  Color(0xffE5D352),
  Color(0xffD9E76C),
 
  Color(0xffD0D5ED),
  Color(0xff482C3D),
  Color(0xffABBEED),
  Color(0xff2596be),

];



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:7),
            child: GestureDetector(
              onTap: (){
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,)),
          );
        },
      ),
    );
  }
}