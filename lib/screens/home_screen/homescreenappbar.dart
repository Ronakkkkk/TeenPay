import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neopop/neopop.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teenpay/Constants/texts.dart';
import 'package:teenpay/reward_icons.dart';
import 'package:teenpay/screens/profile_sreen/main_profile_screen.dart';

class homecompartment {
  Widget showcontainer() {
    return NeoPopCard(
      color: Color(0xff111111),
      size: Size(double.infinity, 300),
      depth: 0,
      child: Container(
          padding: EdgeInsets.only(left: 30, right: 20, top: 20, bottom: 20),
          height: 268,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/ronak.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff212121)),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Reward.gift,
                      color: Color(0xff868686),
                      size: 20,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.maxFinite,
                child: Text(
                  'welcome, Ronak',
                  textAlign: TextAlign.left,
                  style: kheadingtextbold.copyWith(
                      color: Color(0xffE7E7E7),
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.maxFinite,
                child: Text(
                    'explore and claim\nthe membership perks reserved to you',
                    style: kprimarytext.copyWith(
                      color: Color(0xff424242),
                      fontSize: 16,
                    )),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: SvgPicture.asset(
                  'assets/images/introframe.svg',
                ),
              )
            ],
          )),
    );
  }
}
