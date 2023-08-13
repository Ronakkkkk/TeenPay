import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neopop/widgets/cards/neopop_card.dart';
import 'package:teenpay/Constants/texts.dart';

class bottomscreen {
  Widget showbottomscreen() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 20),
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
          NeoPopCard(
              depth: 0,
              color: Color(0xff111111),
              child: Container(
                  padding: EdgeInsets.only(left: 30, right: 20, top: 20),
                  width: double.maxFinite,
                  height: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 140),
                            width: double.maxFinite,
                            child: SvgPicture.asset('assets/icons/refer.svg')),
                        SizedBox(
                          height: 10,
                        ),
                      ]))),
        ],
      ),
    );
  }
}
