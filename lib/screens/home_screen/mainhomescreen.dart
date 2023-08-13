import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neopop/neopop.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as eos;
import 'package:teenpay/Constants/texts.dart';
import 'package:teenpay/screens/home_screen/Midscreen.dart';
import 'package:teenpay/screens/home_screen/bottomscreen.dart';
import 'package:teenpay/screens/home_screen/homescreenappbar.dart';
import 'package:teenpay/screens/profile_sreen/main_profile_screen.dart';

class MainhomeScreen extends StatelessWidget {
  const MainhomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: bottomnavigationbar(),
            backgroundColor: Color(0xff0D0D0D),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  homecompartment().showcontainer(),
                  SizedBox(
                    height: 30,
                  ),
                  Midscreen().showmidscreen(),
                  Divider(
                    color: Color(0xff111111),
                    thickness: 3,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: 30, right: 20, top: 10),
                          width: double.maxFinite,
                          child: Text(
                            'For You',
                            textAlign: TextAlign.left,
                            style: ksecondarytext.copyWith(
                                fontSize: 16, color: Color(0xffE7E7E7)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset('assets/icons/river.svg'),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 145,
                                  left: 20,
                                ),
                                width: 153,
                                height: 219,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            eos.Svg('assets/icons/credi.svg'),
                                        fit: BoxFit.cover)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.maxFinite,
                                      child: Text(
                                        'save the streak!',
                                        textAlign: TextAlign.left,
                                        style: kprimarytext.copyWith(
                                            color: Color(0xffE7E7E7),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                            bottom:
                                                3, // space between underline and text
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                            color: Colors
                                                .white, // Text colour here
                                            width: 1.0, // Underline width
                                          ))),
                                          child: Text("7-Day saving challenge",
                                              style: kprimarytext.copyWith(
                                                  color: Color(0xffE7E7E7),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }

  bottomnavigationbar() {
    return Container(
        height: 60,
        color: Color(0xff0D0D0D),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/home.svg'),
            SvgPicture.asset('assets/icons/cards.svg'),
            SvgPicture.asset('assets/icons/pay1.svg'),
            SvgPicture.asset('assets/icons/rewards.svg'),
            SvgPicture.asset('assets/icons/shop.svg'),
            SvgPicture.asset('assets/icons/more.svg'),
          ],
        ));
  }
}
