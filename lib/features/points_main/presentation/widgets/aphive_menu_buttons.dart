import 'package:Aphive/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AphiveMenuButtonsTop extends StatelessWidget {
  Function aphiveMenuBuy;
  Function aphiveMenuGift;
  Function aphiveMenuDonate;
  AphiveMenuButtonsTop.init(
      {this.aphiveMenuBuy, this.aphiveMenuGift, this.aphiveMenuDonate});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Color(0xfff707070),
          width: .3,
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: aphiveMenuBuy,
            child: Container(
              height: size.height * .08,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_buy_icon,
                      height: 28,
                      width: 28,
                    ),
                  ),
                  Text(
                    "Buy",
                    style: GoogleFonts.montserrat(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " aphive points",
                    style: GoogleFonts.montserrat(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: 15,
                      width: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width,
            height: .3,
            color: Color(0xfff707070),
          ),
          GestureDetector(
            onTap: aphiveMenuGift,
            child: Container(
              height: size.height * .08,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_gift_icon,
                      height: 28,
                      width: 28,
                    ),
                  ),
                  Text(
                    "Gift",
                    style: GoogleFonts.montserrat(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " to a friend",
                    style: GoogleFonts.montserrat(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: 15,
                      width: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width,
            height: .3,
            color: Color(0xfff707070),
          ),
          GestureDetector(
            onTap: aphiveMenuDonate,
            child: Container(
              height: size.height * .08,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_donate_icon,
                      height: 28,
                      width: 28,
                    ),
                  ),
                  Text(
                    "Donate",
                    style: GoogleFonts.montserrat(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " to charity",
                    style: GoogleFonts.montserrat(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: 15,
                      width: 15,
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
    ScreenUtil.init(context);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Color(0xfff707070),
          width: .3,
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: aphiveMenuEarn,
            child: Container(
              height: size.height * .08,
              width: size.width * 0.9,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_referrer_icon,
                      height: 28,
                      width: 28,
                    ),
                  ),
                  Text(
                    "Earn",
                    style: GoogleFonts.montserrat(
                      fontSize: 40.sp,
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
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: 15,
                      width: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width,
            height: .3,
            color: Color(0xfff707070),
          ),
          GestureDetector(
            onTap: aphiveMenuHistory,
            child: Container(
              height: size.height * .08,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_history_icon,
                      height: 28,
                      width: 28,
                    ),
                  ),
                  Text(
                    "History",
                    style: GoogleFonts.montserrat(
                      fontSize: 40.sp,
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
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Image.asset(
                      aphive_back_button_icon,
                      height: 15,
                      width: 15,
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
