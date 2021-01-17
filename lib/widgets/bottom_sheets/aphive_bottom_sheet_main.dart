import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/dialog/aphive_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class AphiveBottomSheetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SlidingUpPanel(
      isDraggable: false,
      minHeight: ScreenUtil().setHeight(1546),
      maxHeight: ScreenUtil().setHeight(1546),
      panel: Padding(
        padding: EdgeInsets.only(top: ScreenUtil().setHeight(243)),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                right: ScreenUtil().setWidth(40),
                top: ScreenUtil().setHeight(46),
                bottom: ScreenUtil().setHeight(46),
                left: ScreenUtil().setWidth(73),
              ),
              height: 40,
              width: ScreenUtil().setWidth(954),
              color: Colors.black12,
              child: DropdownButton<String>(
                isExpanded: true,
                underline: Container(),
                hint: Text(
                  dropdown_hint,
                  style: GoogleFonts.montserrat(
                    fontSize: ScreenUtil().setSp(50),
                    fontStyle: FontStyle.italic,
                    color: Colors.black26,
                  ),
                ),
                items: <String>['10', '50', '100', '150'].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            value,
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "£ ${(int.parse(value)).toStringAsFixed(2)}",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(29.5),
            ),
            Text(
              hint_bottom,
              style: GoogleFonts.montserrat(
                fontSize: ScreenUtil().setSp(45),
              ),
            ),
            Spacer(),
            Container(
              width: ScreenUtil().setWidth(954),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(59),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "£XXX",
                        style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(61),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Transaction fees [BuyPointsTransactionFees]",
                        style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(45),
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(26.5)),
                  Container(
                    height: 1,
                    color: Colors.black12,
                  ),
                  SizedBox(height: ScreenUtil().setHeight(34.5)),
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(59),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "£XXX",
                        style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(61),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(108),
            ),
            GestureDetector(
              onTap: () => showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => AphiveConfirmationDialog(),
              ),
              child: Container(
                alignment: Alignment.center,
                height: ScreenUtil().setWidth(152.43),
                width: ScreenUtil().setWidth(954),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Theme.of(context).primaryColor,
                ),
                child: Text(
                  "Buy",
                  style: GoogleFonts.montserrat(
                    fontSize: ScreenUtil().setSp(50),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(221.6),
            ),
          ],
        ),
      ),
    );
  }
}
