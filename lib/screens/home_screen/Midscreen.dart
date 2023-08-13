import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/texts.dart';

class Midscreen {
  Widget showmidscreen() {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 20),
      width: double.maxFinite,
      height: 320,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quick Actions',
                    textAlign: TextAlign.left,
                    style: ksecondarytext.copyWith(
                        color: Color(0xffE7E7E7), fontSize: 16),
                  ),
                  SvgPicture.asset('assets/icons/arrowrit.svg'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 74,
                  height: 125,
                  child: SvgPicture.asset('assets/icons/mobile postpaid.svg')),
              Container(
                  width: 70,
                  height: 123,
                  child: SvgPicture.asset('assets/icons/broadband.svg')),
              Container(
                  width: 70,
                  height: 123,
                  child: SvgPicture.asset('assets/icons/landline.svg')),
              Container(
                  width: 70,
                  height: 123,
                  child: SvgPicture.asset('assets/icons/electricity.svg'))
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: 74,
                  height: 125,
                  child: SvgPicture.asset('assets/icons/tuition.svg')),
              SizedBox(
                width: 20,
              ),
              Container(
                  width: 70,
                  height: 123,
                  child: SvgPicture.asset('assets/icons/mobile prepaid.svg')),
              SizedBox(
                width: 20,
              ),
              Container(
                  width: 70,
                  height: 123,
                  child: SvgPicture.asset('assets/icons/DTH.svg')),
            ],
          ),
        ],
      ),
    );
  }
}
