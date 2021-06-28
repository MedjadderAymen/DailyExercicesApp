import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(svgSrc: "assets/icons/calendar.svg",title: "Today",press: (){},),
          BottomNavItem(svgSrc: "assets/icons/gym.svg",title: "All Exercises",press: (){}, isActivated: true),
          BottomNavItem(svgSrc: "assets/icons/Settings.svg",title: "Settings",press: (){},),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {

  final String svgSrc, title;
  final bool isActivated;
  final VoidCallback press;

  const BottomNavItem({
    Key? key, required this.svgSrc, required this.title, this.isActivated = false,required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgSrc, color: isActivated ? kActiveIconColor : kTextColor,),
          Text(title, style: TextStyle(color: isActivated ? kActiveIconColor : kTextColor),),
        ],
      ),
    );
  }
}