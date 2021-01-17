import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/buttons/aphive_blue_button.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/logo/aphive_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GiftPointDialog extends StatelessWidget {
  const GiftPointDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Stack(
        children: [
          Positioned(
              top: ScreenUtil().setHeight(89),
              right: ScreenUtil().setWidth(129),
              child: IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.black87,
                  ),
                  onPressed: () => Navigator.of(context).pop())),
          Container(
            padding:
                EdgeInsets.only(left: 24.0, right: 24.0, top: 50, bottom: 40),
            height: ScreenUtil().setHeight(1794),
            width: ScreenUtil().setWidth(1072),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AphiveLogo(),
                SizedBox(
                  height: ScreenUtil().setHeight(59.9),
                ),
                Text(
                  "Success!",
                  style: GoogleFonts.montserrat(
                    fontSize: 65.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: .5,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(94),
                ),
                Text(
                  "You have gifted [PointsGiving] points \nto: [BeneficiaryNumber]",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 43.sp,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(208),
                ),
                Text(
                  "Your new balance is:\n[[UserPointBalance]]",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 43.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    wordSpacing: 2,
                  ),
                ),
                Spacer(),
                AphiveBlueButton(
                  buttonText: "Close",
                  buttonAction: () => Navigator.of(context)
                      .pushReplacementNamed('/points_main'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
