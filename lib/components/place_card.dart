import 'package:flutter/material.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/models/User.dart';

import '../constants.dart';
import '../size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.travelSpot,
    @required this.press,
  }) : super(key: key);

  final TravelSpot travelSpot;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(travelSpot.image),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137),
            padding: EdgeInsets.all(
                getProportionateScreenWidth(kDefaultPadding)
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kDefualtShadow],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
            child: Column(

              children: [
                Text(
                  travelSpot.name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,

                  ),
                ),
                VerticalSpacing(of: 10,),

                Travelers(
                  users: travelSpot.users,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
    @required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUsers = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(30),
      child: Stack(
          children:[

            ...List.generate(
                users.length, (index) {
              totalUsers++;
              return Positioned(
                left: (22*index).toDouble(),
                child: buildTravelerFace(index),
              );
            }
            ),
            Positioned(
              left: (22*totalUsers).toDouble(),
              child: SizedBox(
                height: getProportionateScreenWidth(28),
                width: getProportionateScreenWidth(28),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  onPressed: (){},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ]
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        height: getProportionateScreenHeight(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}