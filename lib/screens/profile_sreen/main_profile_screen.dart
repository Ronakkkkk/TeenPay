import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as eos;
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:teenpay/Constants/texts.dart';
import 'package:teenpay/screens/home_screen/mainhomescreen.dart';

class MainprofileScreen extends StatelessWidget {
  const MainprofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0D0D0D),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => MainhomeScreen())));
                },
                child: Container(
                    margin: EdgeInsets.only(right: 300),
                    child: SvgPicture.asset('assets/icons/left.svg')),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Container(
                      width: 155,
                      height: 155,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: eos.Svg('assets/icons/profile.svg'))),
                      child: Image.asset('assets/icons/pic.png'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Raunak Raj Rauniyar',
                      style: kheadingtext.copyWith(
                          color: Color(0xffE7E7E7),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '+977 9861138955',
                      style: kheadingtext.copyWith(
                          color: Color(0xffE7E7E7), fontSize: 16),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      'assets/images/introframe.svg',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 305,
                height: 163,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: eos.Svg('assets/icons/debitcard.svg'),
                        fit: BoxFit.cover)),
                child: Container(
                  padding: EdgeInsets.only(right: 100, top: 40),
                  child: Column(
                    children: [
                      Text(
                        "use your card to pay\nand claim rewards",
                        style: kheadingtext.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: EdgeInsets.only(right: 20),
                          child: SvgPicture.asset('assets/icons/button.svg'))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff161616),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 90),
                                child:
                                    SvgPicture.asset('assets/icons/coin.svg')),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 65),
                              child: Text(
                                '1,57,015',
                                style: kprimarytext.copyWith(
                                    color: Color(0xffE7E7E7),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Fam Coins',
                                    style: kprimarytext.copyWith(
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/icons/arrowrit.svg')
                                ],
                              ),
                            )
                          ]),
                    ),
                    Container(
                      height: 100,
                      width: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff161616),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 90),
                                child: SvgPicture.asset(
                                    'assets/icons/transi1.svg')),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 35),
                              padding: EdgeInsets.only(
                                bottom: 4, // space between underline and text
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Colors.white, // Text colour here
                                width: 1.0, // Underline width
                              ))),
                              child: Text("Transitions",
                                  style: kprimarytext.copyWith(
                                      color: Color(0xffE7E7E7),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                  width: 300,
                  child: SvgPicture.asset('assets/icons/profilebottom.svg'))
            ],
          ),
        ),
      ),
    );
  }
}
