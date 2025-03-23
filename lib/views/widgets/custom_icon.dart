import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
 final IconData icon ;

 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: IconButton(onPressed: onPressed, icon: Icon(icon,size: 28,),),
    ),
    );
  }
}