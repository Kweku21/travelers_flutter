import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon:"assets/icons/calendar.svg" ,
                title: "Calender",
                isActive: true,
                press: (){},
              ),
              NavItem(
                icon:"assets/icons/chat.svg" ,
                title: "Chat",
                isActive: false,
                press: (){},
              ),
              NavItem(
                icon:"assets/icons/friendship.svg" ,
                title: "Friends",
                isActive: false,
                press: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.isActive,
    @required this.press,
  }) : super(key: key);

  final String icon,title;
  final bool isActive;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(60),
      width: getProportionateScreenWidth(60 ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if(isActive)kDefualtShadow]
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: 20,
            color: kTextColor,
          ),
          Text(title
            ,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}