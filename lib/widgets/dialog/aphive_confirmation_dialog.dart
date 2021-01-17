import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/buttons/aphive_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AphiveConfirmationDialog extends StatelessWidget {
  const AphiveConfirmationDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(ScreenUtil().setWidth(59)),
        alignment: Alignment.center,
        height: ScreenUtil().setHeight(976),
        width: ScreenUtil().setWidth(1072),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(128),
            ),
            Text(
              "Success!",
              style: GoogleFonts.montserrat(
                fontSize: ScreenUtil().setSp(65),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(90),
            ),
            Text(
              "You bought XXX points.",
              style: GoogleFonts.montserrat(
                fontSize: ScreenUtil().setSp(49),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(55),
            ),
            Text(
              "New balance: [UserPointBalance]",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: ScreenUtil().setSp(49),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(81),
            ),
            AphiveBlueButton(
              buttonText: "Home",
              buttonAction: () =>
                  Navigator.pushReplacementNamed(context, '/points_main'),
            ),
          ],
        ),
      ),
    );
  }
}
