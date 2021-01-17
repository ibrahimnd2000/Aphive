import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AphiveLogo extends StatelessWidget {
  const AphiveLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        aphive_icon,
        height: ScreenUtil().setHeight(153.83),
        width: ScreenUtil().setWidth(178.05),
      ),
    );
  }
}
