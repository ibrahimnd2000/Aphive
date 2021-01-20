import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:Aphive/configs/constants.dart';

class AphiveMenuButtonsTop extends StatelessWidget {
  Function aphiveMenuBuy;
  Function aphiveMenuGift;
  Function aphiveMenuDonate;
  AphiveMenuButtonsTop.init(
      {this.aphiveMenuBuy, this.aphiveMenuGift, this.aphiveMenuDonate});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(679),
      width: ScreenUtil().setWidth(1137),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Color(0xFF707070),
          width: ScreenUtil().setWidth(1),
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: aphiveMenuBuy,
            child: Container(
              height: ScreenUtil().setHeight(220.5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  )),
              child: Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(122.5),
                  ),
                  Image.asset(
                    aphive_buy_icon,
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(107.6),
                  ),
                  Text(
                    "Buy",
                    style: GoogleFonts.montserrat(
                      fontSize: ScreenUtil().setSp(53),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " aphive points",
                    style: GoogleFonts.montserrat(
                      fontSize: ScreenUtil().setSp(53),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: ScreenUtil().setWidth(106.5),
                    ),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: ScreenUtil().setHeight(52.69),
                      width: ScreenUtil().setHeight(32.54),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(1),
            color: Color(0xFF707070),
          ),
          GestureDetector(
            onTap: aphiveMenuGift,
            child: Container(
              height: ScreenUtil().setHeight(220.5),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(122.5),
                  ),
                  Image.asset(
                    aphive_gift_icon,
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(107.6),
                  ),
                  Text(
                    "Gift",
                    style: GoogleFonts.montserrat(
                      fontSize: ScreenUtil().setSp(53),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " to a friend",
                    style: GoogleFonts.montserrat(
                      fontSize: ScreenUtil().setSp(53),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: ScreenUtil().setWidth(106.5),
                    ),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: ScreenUtil().setHeight(52.69),
                      width: ScreenUtil().setHeight(32.54),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(1),
            color: Color(0xFF707070),
          ),
          GestureDetector(
            onTap: aphiveMenuDonate,
            child: Container(
              height: ScreenUtil().setHeight(220.5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  )),
              child: Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(122.5),
                  ),
                  Image.asset(
                    aphive_donate_icon,
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(107.6),
                  ),
                  Text(
                    "Donate",
                    style: GoogleFonts.montserrat(
                      fontSize: ScreenUtil().setSp(53),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " to charity",
                    style: GoogleFonts.montserrat(
                      fontSize: ScreenUtil().setSp(53),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: ScreenUtil().setWidth(106.5),
                    ),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: ScreenUtil().setHeight(52.69),
                      width: ScreenUtil().setHeight(32.54),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AphiveMenuButtonsBottom extends StatelessWidget {
  Function aphiveMenuEarn;
  Function aphiveMenuHistory;
  AphiveMenuButtonsBottom.init({this.aphiveMenuEarn, this.aphiveMenuHistory});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(454),
      width: ScreenUtil().setWidth(1137),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Color(0xFF707070),
          width: ScreenUtil().setWidth(1),
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: aphiveMenuEarn,
            child: Container(
              height: ScreenUtil().setHeight(220.5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(122.5),
                  ),
                  Image.asset(
                    aphive_referrer_icon,
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(107.6),
                  ),
                  Text(
                    "Earn",
                    style: GoogleFonts.montserrat(
                      fontSize: ScreenUtil().setSp(53),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "",
                    style: GoogleFonts.montserrat(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: ScreenUtil().setWidth(106.5),
                    ),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: ScreenUtil().setHeight(52.69),
                      width: ScreenUtil().setHeight(32.54),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(1),
            color: Color(0xFF707070),
          ),
          GestureDetector(
            onTap: aphiveMenuHistory,
            child: Container(
              height: ScreenUtil().setHeight(220.5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(122.5),
                  ),
                  Image.asset(
                    aphive_history_icon,
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(107.6),
                  ),
                  Text(
                    "History",
                    style: GoogleFonts.montserrat(
                      fontSize: ScreenUtil().setSp(53),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "",
                    style: GoogleFonts.montserrat(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: ScreenUtil().setWidth(106.5),
                    ),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: ScreenUtil().setHeight(52.69),
                      width: ScreenUtil().setHeight(32.54),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
