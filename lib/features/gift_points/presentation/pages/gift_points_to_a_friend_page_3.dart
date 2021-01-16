import 'package:Aphive/constants.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_blue_button.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_logo.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_purple_button.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_select_amount.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_title.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/gift_point_dialog.dart';
import 'package:Aphive/features/global/presentation/widgets/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_screenutil/size_extension.dart';

class GiftPointsToAFriend3 extends StatefulWidget {
  GiftPointsToAFriend3({Key key}) : super(key: key);

  @override
  _GiftPointsToAFriend3State createState() => _GiftPointsToAFriend3State();
}

class _GiftPointsToAFriend3State extends State<GiftPointsToAFriend3> {
  bool agree = false;

  void _onAgreementChanged(bool newValue) => setState(() {
        agree = newValue;

        if (agree) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final size = MediaQuery.of(context).size;
    return BaseView(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AphiveLogo(),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AphiveTitle(),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  review,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 50.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
        SlidingUpPanel(
          isDraggable: false,
          minHeight: size.height * 0.535,
          maxHeight: size.height * 0.535,
          panel: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              children: [
                Container(
                  width: .72.sw,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            beneficiary,
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 40.sp,
                            ),
                          ),
                          Spacer(),
                          Text(
                            beneficiary_number,
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 40.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            points_to_gift,
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 40.sp,
                            ),
                          ),
                          Spacer(),
                          Text(
                            points_to_gift_val,
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 40.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  width: .75.sw,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(
                      4.0,
                    ),
                  ),
                  child: TextField(
                      maxLines: 8,
                      decoration: InputDecoration.collapsed(
                        hintText: "add note (optional)",
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                      )),
                ),
                Container(
                  width: .82.sw,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: agree,
                        onChanged: _onAgreementChanged,
                        activeColor: Colors.white,
                        checkColor: Colors.blue,
                      ),
                      Expanded(
                        child: Text(
                          "Select if you want the beneficiary to know your name",
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.montserrat(),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                AphiveBlueButton(
                  text: "Gift!",
                  buttonAction: () => showDialog(
                      context: context,
                      builder: (context) => GiftPointDialog()),
                ),
                SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
