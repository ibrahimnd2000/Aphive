import 'package:Aphive/features/gift_points/presentation/widgets/aphive_blue_button.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GiftPointDialog extends StatelessWidget {
  const GiftPointDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Dialog(
      child: Stack(
        children: [
          Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.black87,
                  ),
                  onPressed: null)),
          Container(
            padding:
                EdgeInsets.only(left: 24.0, right: 24.0, top: 50, bottom: 40),
            height: .65.sh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AphiveLogo(),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Success!",
                  style: GoogleFonts.montserrat(
                    fontSize: 55.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: .5,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "You have gifted [PointsGiving] points \nto: [BeneficiaryNumber]",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 40.sp,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Your new balance is:\n[[UserPointBalance]]",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    wordSpacing: 2,
                  ),
                ),
                Spacer(),
                AphiveBlueButton(
                  height: 40,
                  text: "Close",
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
