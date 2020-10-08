import 'package:flutter/material.dart';
import 'package:travel/screens/components/search.dart';
import '../../size_config.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
//      overflow: Overflow.visible,
      alignment: Alignment.center,
//            overflow: Overflow.clip,
//          fit: Stack.overflow,
      children: [

        Image.asset(
          'assets/images/home_bg.png',
          height: getProportionateScreenWidth(315),
          fit: BoxFit.cover,
          width: double.infinity,
        ),

        Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(80),),
            Text(
              'Travelers',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(73),
                height: 0.5,

              ),
            ),

            Text('Travel Community App',
              style: TextStyle(
                color: Colors.white,
              ),),
          ],
        ),

        Positioned(

          bottom: getProportionateScreenWidth(3),
          child: SearchField(),
        )

      ],

    );
  }
}

