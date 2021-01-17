import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/size_extension.dart';

class AphiveSelectAmount extends StatelessWidget {
  const AphiveSelectAmount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
          right: ScreenUtil().setWidth(40),
          top: ScreenUtil().setHeight(46),
          bottom: ScreenUtil().setHeight(46),
          left: ScreenUtil().setWidth(73)),
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
            child: Row(
              children: [
                Text(
                  value,
                  style: GoogleFonts.montserrat(
                    fontSize: ScreenUtil().setSp(50),
                  ),
                ),
                Spacer(),
                Text(
                  "£ ${(int.parse(value)).toStringAsFixed(2)}",
                  style: GoogleFonts.montserrat(
                    fontSize: ScreenUtil().setSp(50),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
